package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeMapper;
import fu.training.FrameMates_API.employee.EmployeeModel;
import fu.training.FrameMates_API.employee.EmployeeService;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountModel;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeMapper;
import fu.training.FrameMates_API.employee.EmployeeModel;
import fu.training.FrameMates_API.employee.EmployeeRepository;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StudioServiceImpl implements StudioService {
	@Autowired
	private StudioMapper studioMapper;
	@Autowired
	private EmployeeMapper employeeMapper;
	@Autowired
	private StudioRepository studioRepository;
	@Autowired
	private AccountService accountService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private EntityManager entityManager;
	@Autowired
	private EmployeeRepository employeeRepository;
	private Studio getStudio(Integer id) {
		Studio studio = null;
		Optional optionalStudio = studioRepository.findById(id);
		if (optionalStudio.isPresent()) {
			studio = (Studio) optionalStudio.get();
		}
		return studio;
	}

	@Override
	public long count() {
		return studioRepository.count();
	}

	@Override
	public void updateStudioStatus(int id, int status, Authentication authentication) throws IllegalAccessException {
		if(authentication == null ) throw  new MissingBearerTokenException();
		var currentAccount = (Account) authentication.getPrincipal();
		if(currentAccount.getAdministrator() == null) throw new IllegalAccessException("You are not permitted to use this function");
		Studio s = getStudio(id);
		s.setStatus(status);
		s.setAdmin(currentAccount.getAdministrator());
		studioRepository.save(s);
	}

	@Override
	@Transactional
	public StudioModel createStudio(StudioModel studioModel, Employee employee) {
		if(employee == null) throw new IllegalArgumentException("You must be employee to do this function");
		if(studioRepository.findByOwner_EmployeeIdAndStatusNot(employee.getEmployeeId(), -1) != null){
			throw new IllegalArgumentException("You must not own a studio to do this function");
		}
		studioModel.setBalance(0);
		studioModel.setStatus(0);
		studioModel.setCreateDate(new Timestamp(System.currentTimeMillis()));
		studioModel.setTotalRating((double) 0);

		var studioEntity = studioMapper.toEntity(studioModel);
		studioEntity.setOwner(employee);
		var addedStudio = entityManager.merge(studioEntity);
		employee.setStudio(addedStudio);
		employeeService.updateEmployeeUsingEntity(employee);
		return studioMapper.toModel(addedStudio);
	}

	@Override
	public StudioModel getById(Integer id) {
		return studioMapper.toModel(getStudio(id));
	}

	@Override
	public List<StudioModel> getByName(String name) {
		List<StudioModel> studioModels = new ArrayList<>();
		List<Studio> studios = studioRepository.findAllByNameContains(name);
		studios.forEach(studio -> studioModels.add(studioMapper.toModel(studio)));
		return studioModels;
	}

	@Override
	public StudioModel update(Integer id, StudioModel studioModel) {
		Studio studio = getStudio(id);
		if (studio == null) {
			throw new RecordNotFoundException("Studio not found!");
		}
		studio.setName(studioModel.getName());
		studio.setAddress(studioModel.getAddress());
		studio.setDescription(studioModel.getDescription());
		studio.setAvatarStudio(studioModel.getAvatarStudio());
		studio.setCoverImage(studioModel.getCoverImage());
		return studioMapper.toModel(studioRepository.save(studio));
	}

	@Override
	public PaginationResponse<StudioModel> searchByStatus(int status, String searchKey, Pageable pageable) {

		Page<Studio> studioPage = studioRepository.findAllByNameContainingOrOwner_Account_FullNameContainingOrOwner_Account_EmailContainingAndStatus(searchKey, status, pageable);
		PaginationResponse<StudioModel> result = new PaginationResponse<>();
		result.setPageNum(studioPage.getNumber());
		var studioList = studioPage.getContent();
		studioList.forEach(s -> {
			if(s.getOwner() != null)
				s.getOwner().setAccount(accountService.findAccountByEmployeeId(s.getOwner().getEmployeeId()));
		});
		result.setItems(studioMapper.toModels(studioList));
		result.setTotalItems(studioPage.getTotalElements());
		result.setPageSize(studioPage.getSize());
		result.setTotalPageNum(studioPage.getTotalPages());
		return result;
	}
	public StudioModel findByCurrentOwner(Authentication authentication) throws RecordNotFoundException {
		Account account = (Account) authentication.getPrincipal();
		Employee employee = account.getEmployee();
		Studio studio = studioRepository.findByOwner_EmployeeIdAndStatusNot(employee.getEmployeeId(), -1);
		StudioModel studioModel = studioMapper.toModel(studio);
		if(studioModel != null) {
			EmployeeModel owner = employeeMapper.toModel(employee);
			studioModel.setOwner(owner);
			return studioModel;
		}
		throw new RecordNotFoundException("Can not find studio by employee id: " + employee.getEmployeeId());
	}

}

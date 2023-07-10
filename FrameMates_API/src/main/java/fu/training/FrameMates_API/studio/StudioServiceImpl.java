package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountModel;
import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeMapper;
import fu.training.FrameMates_API.employee.EmployeeModel;
import fu.training.FrameMates_API.employee.EmployeeRepository;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

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
	public StudioModel createStudio(StudioModel studioModel, Employee employee) {
		if(employee == null) throw new IllegalArgumentException("You must be employee to do this function");
		if(studioRepository.findByOwner_EmployeeId(employee.getEmployeeId()) != null){
			throw new IllegalArgumentException("You must not own a studio to do this function");
		}
		studioModel.setOwner(employeeMapper.toModel(employee));
		studioModel.setBalance(0);
		studioModel.setStatus(1);
		studioModel.setCreateDate(new Timestamp(System.currentTimeMillis()));
		studioModel.setTotalRating((double) 0);

		var studioEntity = studioMapper.toEntity(studioModel);
		studioEntity.setOwner(employee);

		return studioMapper.toModel(studioRepository.save(studioEntity));
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
		studio.setStatus(studioModel.getStatus());
		studio.setTotalRating(studioModel.getTotalRating());
		studio.setBalance(studio.getBalance());
		studio.setAvatarStudio(studioModel.getAvatarStudio());
		studio.setCoverImage(studioModel.getCoverImage());
		return studioMapper.toModel(studioRepository.save(studio));
	}

	@Override
	public StudioModel findByCurrentOwner(Authentication authentication) throws RecordNotFoundException {
		Account account = (Account) authentication.getPrincipal();
		Employee employee = employeeRepository.findByAccountAccountId(account.getAccountId());
		Studio studio = studioRepository.findByOwner_EmployeeId(employee.getEmployeeId());
		StudioModel studioModel = studioMapper.toModel(studio);
		if(studioModel != null) {
			EmployeeModel owner = employeeMapper.toModel(employee);
			studioModel.setOwner(owner);
			return studioModel;
		}
		throw new RecordNotFoundException("Can not find studio by employee id: " + employee.getEmployeeId());
	}
}

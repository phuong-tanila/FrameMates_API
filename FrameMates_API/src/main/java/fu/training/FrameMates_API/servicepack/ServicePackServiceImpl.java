package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeMapper;
import fu.training.FrameMates_API.employee.EmployeeService;
import fu.training.FrameMates_API.mediaservice.MediaServiceMapper;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import fu.training.FrameMates_API.studio.StudioService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.*;

@Slf4j
@Service
public class ServicePackServiceImpl implements ServicePackService {

	@Autowired
	private ServicePackMapper servicePackMapper;
	@Autowired
	private MediaServiceMapper mediaServiceMapper;
	@Autowired
	private EmployeeMapper employeeMapper;


	@Autowired
	private ServicePackRepository servicePackRepository;


	@Autowired
	private StudioService studioService;
	@Autowired
	private EmployeeService employeeService;



//	@Autowired
//	private
	@Override
	public List<ServicePackModel> getAll() {
		List<ServicePack> listService = servicePackRepository.findAll();
		return servicePackMapper.toModels(listService);
	}


	@Override
	public PaginationResponse<ServicePackModel> getAll(Pageable pageable) {

		var serivcePackPage =  servicePackRepository.findAll(pageable);
		return getServicePackModelPaginationResponse(serivcePackPage);
//		page.
	}

	private PaginationResponse<ServicePackModel> getServicePackModelPaginationResponse(Page<ServicePack> serivcePackPage) {
		var result = new PaginationResponse<ServicePackModel>();
		result.setItems(servicePackMapper.toModels(serivcePackPage.getContent()));
		result.setPageNum(serivcePackPage.getNumber());
		result.setPageSize(serivcePackPage.getSize());
		result.setTotalPageNum(serivcePackPage.getTotalPages());
		result.setTotalItems(serivcePackPage.getTotalElements());
		return result;
	}

	@Override
	public PaginationResponse<ServicePackModel> getByName(String name, Pageable pageable){
		var serivcePackPage = servicePackRepository.findByNameContaining(name, pageable);
//		System.out.println(page);
		return getServicePackModelPaginationResponse(serivcePackPage);
	}
	@Override
	public ServicePackModel getById(int serviceId) throws RecordNotFoundException {
		ServicePack servicePack = getServiceById(serviceId);
		ServicePackModel servicePackModel = servicePackMapper.toModel(servicePack);
		return servicePackModel;
	}
	@Override
	public ServicePack getServiceById(int serviceId) throws RecordNotFoundException {
		Optional<ServicePack> optService = servicePackRepository.findById(serviceId);
		if(optService.isEmpty()) throw new RecordNotFoundException("Service id not found!");
		return optService.get();
	}

	@Override
	public ServicePackModel createService(ServicePackModel servicePackModel){
		int employeeId = servicePackModel.getCreateBy().getEmployeeId();
		Employee employee = employeeService.findByEmployeeId(employeeId);
		if(employee.getStudio() == null) throw new RecordNotFoundException("You must own or work for a studio to do perform this action");
		servicePackModel.setCreateDate(new Timestamp(new Date().getTime()));
		servicePackModel.setRating(Double.valueOf(0));
		servicePackModel.setView(0);
		servicePackModel.setDiscount(0);
		String serviceStatus = EnumConverter.convertEnumValueToString(ServiceStatus.CREATED.ordinal(), ServiceStatus.class);
//		servicePackModel.setStatus(serviceStatus);
		log.error(serviceStatus);
		ServicePack service = servicePackMapper.toEntity(servicePackModel);
		ServicePack tmpService = service;
		service.getServicePack_mediaService().forEach(f -> f.setServicePack(tmpService));
		service.setStudio(employee.getStudio());
		service.setStatus(ServiceStatus.CREATED.ordinal());
		service = servicePackRepository.save(service);
		return servicePackMapper.toModel(service);
	}

	@Override
	public ServicePackModel updateService(ServicePackModel servicePackModel, Employee employee) throws RecordNotFoundException {
		// find in db
		Set<ServicePack> serviceList = findByServicesByStudioId(employee.getStudio().getStudioId());
		for (ServicePack servicePack : serviceList) {
			if(servicePack.getServiceId() == servicePackModel.getServiceId()){
				servicePack.setName(servicePackModel.getName());
				servicePack.setDiscount(servicePackModel.getDiscount());
				servicePack.setDescription(servicePackModel.getDescription());
				servicePack.setPrice(servicePackModel.getPrice());
				servicePack.setSoldCount(servicePackModel.getSoldCount());
				servicePack.setView(servicePackModel.getView());
				servicePack.setServicePack_mediaService(mediaServiceMapper.toEntities(servicePackModel.getServicePack_mediaService()));
				// update in db
				servicePack.setUpdateBy(employeeMapper.toEntity(servicePackModel.getUpdateBy()));
				servicePack.setUpdateDate(new Timestamp(System.currentTimeMillis()));
				servicePack = servicePackRepository.save(servicePack);
				// return model
				return servicePackMapper.toModel(servicePack);
			}
		}
		throw new RecordNotFoundException("Your studio don't have a service that have id: " + servicePackModel.getServiceId());

	}

	@Override
	public Set<ServicePack> findByServicesByStudioId(long studioId) {
		return servicePackRepository.findByStudioStudioId(studioId);
	}

	@Override
	public List<ServicePackModel> findAllByServicesByStudioId(long studioId) {
		Set<ServicePack> servicePacksSet = findByServicesByStudioId(studioId);
		List<ServicePack> servicePacksList = new ArrayList<>(servicePacksSet);
		return servicePackMapper.toModels(servicePacksList);
	}

	@Override
	public PaginationResponse<ServicePackModel> findByServicesByStudioId(int serviceId, Pageable pageable) {
		PaginationResponse<ServicePackModel> paginationResponse = new PaginationResponse<>();
		Page page =  servicePackRepository.findByStudioStudioId(serviceId, pageable);
		List<ServicePackModel> servicePackModels = servicePackMapper.toModels(page.getContent());
		return paginationResponse.convertFromPage(page, servicePackModels);
	}

	@Override
	public void deleteService(Integer serviceId, Employee employee) throws RecordNotFoundException {
		log.debug(employee.toString());
		if(employee.getStudio() == null) throw new RecordNotFoundException("You must own or work for a studio to do perform this action");
		Set<ServicePack> serviceList = findByServicesByStudioId(employee.getStudio().getStudioId());
		for (ServicePack servicePack: serviceList) {
			if (servicePack.getServiceId() == serviceId) {
				servicePack.setUpdateBy(employee);
				servicePack.setStatus(ServiceStatus.DELETED.ordinal());
				servicePackRepository.save(servicePack);
				return;
			}
		}
		throw new RecordNotFoundException("Your studio don't have a service that have id: " + serviceId);
	}
}

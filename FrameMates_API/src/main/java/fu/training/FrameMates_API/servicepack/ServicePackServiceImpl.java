package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeMapper;
import fu.training.FrameMates_API.employee.EmployeeService;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import fu.training.FrameMates_API.studio.StudioService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Slf4j
@Service
public class ServicePackServiceImpl implements ServicePackService {

	@Autowired
	private ServicePackMapper servicePackMapper;
	@Autowired
	private ServicePackRepository servicePackRepository;
	@Autowired
	private StudioService studioService;
	@Autowired
	private EmployeeMapper employeeMapper;

	@Autowired
	private EmployeeService employeeService;

//	@Autowired
//	private
	@Override
	public List<ServicePackModel> getAll() {
		List<ServicePack> listSerivce = servicePackRepository.findAll();
		return servicePackMapper.toModels(listSerivce);
	}


	@Override
	public Page<ServicePackModel> getAll(Pageable pageable) {

		List<ServicePack> listSerivce =  servicePackRepository.findAll(pageable).getContent();

		return new PageImpl<>(servicePackMapper.toModels(listSerivce));
//		page.
	}

	@Override
	public Page<ServicePackModel> getByName(String name, Pageable pageable){
		var listSerivce = servicePackRepository.findByNameContaining(name, pageable).getContent();
//		System.out.println(page);
		return new PageImpl<>(servicePackMapper.toModels(listSerivce));
	}
	@Override
	public ServicePackModel getById(int serviceId) throws RecordNotFoundException {
		return servicePackMapper.toModel(getServiceById(serviceId));
	}
	private ServicePack getServiceById(int serviceId) throws RecordNotFoundException {
		Optional<ServicePack> optService = servicePackRepository.findById(serviceId);
		if(optService.isEmpty()) throw new RecordNotFoundException("Service id not found!");
		return optService.get();
	}

	@Override
	public ServicePackModel createService(ServicePackModel servicePackModel){
		log.error(servicePackModel.toString());
		servicePackModel.setCreateDate(new Timestamp(new Date().getTime()));
		servicePackModel.setRating(Double.valueOf(0));
		servicePackModel.setView(0);
		servicePackModel.setDiscount(0);
		servicePackModel.setStudio(servicePackModel.getCreateBy().getStudioModel());
		log.error(ServiceStatus.CREATED.toString());
		String serviceStatus = EnumConverter.convertEnumValueToString(ServiceStatus.CREATED.ordinal(), ServiceStatus.class);
//		servicePackModel.setStatus(serviceStatus);
		log.error(serviceStatus);
		ServicePack service = servicePackMapper.toEntity(servicePackModel);
		service.setStatus(ServiceStatus.CREATED.ordinal());
		service = servicePackRepository.save(service);
		return servicePackMapper.toModel(service);
	}

	@Override
	public ServicePackModel updateService(ServicePackModel servicePackModel, Employee employee) throws RecordNotFoundException {
		// find in db
		Set<ServicePack> serviceList = employee.getStudio().getStudio_servicePack();
		for (ServicePack servicePack: serviceList) {
			ServicePack service = getServiceById(servicePackModel.getServiceId());
			// change model to entity
			service = servicePackMapper.toEntity(servicePackModel);
			// update in db
			service.setUpdateBy(employeeMapper.toEntity(servicePackModel.getUpdateBy()));
			service.setUpdateDate(new Timestamp(System.currentTimeMillis()));
			service = servicePackRepository.save(service);
			// return model
			return servicePackMapper.toModel(service);
		}
		throw new RecordNotFoundException("Your studio don't have a service that have id: " + servicePackModel.getServiceId());

	}

	@Override
	public void deleteService(Integer serviceId, Employee employee) throws RecordNotFoundException {
//		servicePackRepository.delete(getServiceById(serviceId));
		ServicePack deletingService = getServiceById(serviceId);
		if(!employee.getStudio().getStudio_servicePack().contains(deletingService))
			throw new RecordNotFoundException("Your studio don't have a service that have id: " + serviceId);
		deletingService.setUpdateBy(employee);
		deletingService.setStatus(ServiceStatus.DELETED.ordinal());
		servicePackRepository.save(deletingService);
	}
}

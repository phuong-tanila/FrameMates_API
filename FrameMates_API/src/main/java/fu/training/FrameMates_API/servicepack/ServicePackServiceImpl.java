package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class ServicePackServiceImpl implements ServicePackService {

	@Autowired
	private ServicePackMapper mapper;
	@Autowired
	private ServicePackRepository servicePackRepository;

	@Override
	public List<ServicePack> getAll() {
		return servicePackRepository.findAll();
	}


	@Override
	public Page<ServicePack> getAll(Pageable pageable) {
		return servicePackRepository.findAll(pageable);
	}

	@Override
	public Page<ServicePack> getByName(String name, Pageable pageable){
		return servicePackRepository.findByName(name, pageable);
	}
	@Override
	public ServicePackModel getById(int serviceId) throws RecordNotFoundException {
		return mapper.toModel(getServiceById(serviceId));
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
		servicePackModel.setStudio(servicePackModel.getCreateBy().getStudio());
		ServicePack service = mapper.toEntity(servicePackModel);
		service = servicePackRepository.save(service);
		return mapper.toModel(service);
	}

	@Override
	public ServicePackModel updateService(ServicePackModel servicePackModel) throws RecordNotFoundException {
		// find in db
		ServicePack service = getServiceById(servicePackModel.getServiceId());
		// change model to entity
		service = mapper.toEntity(servicePackModel);
		// update in db
		service = servicePackRepository.save(service);
		// return model
		return mapper.toModel(service);
	}

	@Override
	public void deleteService(Integer serviceId) throws RecordNotFoundException {
//		servicePackRepository.delete(getServiceById(serviceId));
		log.error("Not implemented");
	}
}

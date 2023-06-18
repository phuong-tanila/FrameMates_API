package fu.training.FrameMates_API.servicepack;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
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
	public ServicePackModel updateService(ServicePackModel servicePackModel) {
		ServicePack service = mapper.toEntity(servicePackModel);
		service = servicePackRepository.save(service);
		return mapper.toModel(service);
	}
}

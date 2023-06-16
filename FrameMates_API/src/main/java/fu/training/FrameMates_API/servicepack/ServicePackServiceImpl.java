package fu.training.FrameMates_API.servicepack;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServicePackServiceImpl implements ServicePackService {

	@Autowired
	private ServicePackRepository servicePackRepository;

	@Override
	public List<ServicePack> getAll() {
		return servicePackRepository.findAll();
	}

	@Override
	public ServicePack save(ServicePack servicePack){
		return servicePackRepository.save(servicePack);
	}
}

package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ServicePackServiceImpl implements ServicePackService {

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
	public ServicePack findById(int id) throws RecordNotFoundException {
		Optional<ServicePack> optional =  servicePackRepository.findById(id);
		if(optional.isPresent()) return optional.get();
		throw new RecordNotFoundException();
	}

}

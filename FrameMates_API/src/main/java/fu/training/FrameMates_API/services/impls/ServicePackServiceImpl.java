package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.ServicePackRepository;
import fu.training.FrameMates_API.services.ServicePackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServicePackServiceImpl implements ServicePackService {

	@Autowired
	private ServicePackRepository servicePackRepository;
}

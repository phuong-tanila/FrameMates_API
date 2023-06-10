package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.ServicePackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ServicePackService {

	@Autowired
	private ServicePackRepository servicePackRepository;
}

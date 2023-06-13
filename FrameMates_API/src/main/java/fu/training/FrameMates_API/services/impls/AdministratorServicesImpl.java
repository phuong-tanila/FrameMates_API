package fu.training.FrameMates_API.services.impls;


import fu.training.FrameMates_API.entities.Administrator;
import fu.training.FrameMates_API.repositories.AdministratorRepository;
import fu.training.FrameMates_API.services.AdministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministratorServicesImpl implements AdministratorService {

	@Autowired
	private AdministratorRepository administratorRepository;

	@Override
	public long count() {
		return administratorRepository.count();
	}

	@Override
	public Administrator createAdmin(Administrator admin) {
		return  administratorRepository.save(admin);
	}
}

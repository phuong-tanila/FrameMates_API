package fu.training.FrameMates_API.administrator;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministratorServiceImpl implements AdministratorService {

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

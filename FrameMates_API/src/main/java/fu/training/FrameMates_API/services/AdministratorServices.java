package fu.training.FrameMates_API.services;


import fu.training.FrameMates_API.repositories.AdministratorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdministratorServices {

	@Autowired
	private AdministratorRepository administratorRepository;

}

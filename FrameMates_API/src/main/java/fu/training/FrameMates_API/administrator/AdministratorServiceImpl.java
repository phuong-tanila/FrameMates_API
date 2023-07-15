package fu.training.FrameMates_API.administrator;


import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@Service
public class AdministratorServiceImpl implements AdministratorService {

	@Autowired
	private AdministratorRepository administratorRepository;

	@Autowired
	private AdministratorMapper administratorMapper;
	@Override
	public long count() {
		return administratorRepository.count();
	}

	@Override
	public Administrator createAdmin(Administrator admin) {
		return  administratorRepository.save(admin);
	}

	@Override
	public AdministratorModel getCurrentAdmin(Authentication authentication) throws IllegalAccessException {
		if(authentication == null) throw new MissingBearerTokenException();
		var currentAccount = (Account) authentication.getPrincipal();
		if(currentAccount.getAdministrator() == null) throw new IllegalAccessException("You must be an admin to do this function");
		return administratorMapper.toModel(currentAccount.getAdministrator());
	}
}

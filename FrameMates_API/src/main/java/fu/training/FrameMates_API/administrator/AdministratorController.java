package fu.training.FrameMates_API.administrator;


import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.administrator.AdministratorService;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/admins")
public class AdministratorController {

	@Autowired
	private AdministratorService administratorServices;

	@GetMapping("/current")
	public ResponseEntity getCurrentAdmin(
		Authentication authentication
	) throws IllegalAccessException {
		return ResponseEntity.ok(administratorServices.getCurrentAdmin(authentication));
	}

}

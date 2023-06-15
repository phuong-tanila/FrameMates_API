package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/services")
public class ServicePackController {

	@Autowired
	private ServicePackService servicePackService;

	@GetMapping("")
	public ResponseEntity<List<ServicePack>> getAll(){
		return new ResponseEntity<List<ServicePack>>(servicePackService.getAll(), HttpStatus.OK);
	}

	@GetMapping("/a")
	public ResponseEntity<String> test(){
		return new ResponseEntity<String>("123", HttpStatus.OK);
	}

}

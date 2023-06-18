package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import jdk.jshell.spi.ExecutionControl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Role;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.Date;
import java.util.InvalidPropertiesFormatException;
import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/services")
public class ServicePackController {

	@Autowired
	private ServicePackService servicePackService;

	@Autowired
	private ServicePackMapper servicePackMapper;

	@GetMapping("")
	public ResponseEntity<List<ServicePack>> getAll(){
		return new ResponseEntity<List<ServicePack>>(servicePackService.getAll(), HttpStatus.OK);
	}

	@GetMapping("/{serviceId}")
	public ResponseEntity<ServicePackModel> getById(int serviceId) throws RecordNotFoundException {
		return new ResponseEntity<ServicePackModel>(servicePackService.getById(serviceId), HttpStatus.OK);
	}

	@PostMapping("")
//	@PostAuthorize()
	public ResponseEntity<?> createService(
			@Valid @RequestBody ServicePackModel model,
			Authentication authentication
	) throws InvalidPropertiesFormatException {
		Account currentAccount =(Account) authentication.getPrincipal();
		model.setCreateBy(currentAccount.getEmployee());
		if(model.getServiceId() != 0) {
			throw new InvalidPropertiesFormatException("Service id can not be specified!");
		}
		ServicePackModel serviceModel = servicePackService.createService(model);
		return new ResponseEntity<ServicePackModel>(serviceModel, HttpStatus.CREATED);
	}

	@PatchMapping("/{serviceId}")
	public ResponseEntity<?> updateService(
			@Valid @RequestBody ServicePackModel model
			, @PathVariable Integer serviceId
	) throws InvalidPropertiesFormatException, RecordNotFoundException {
		if(serviceId == null) {
			throw new InvalidPropertiesFormatException("Service id must be specified!");
		}
		model.setServiceId(serviceId);
		ServicePackModel serviceModel = servicePackService.updateService(model);
		return new ResponseEntity<ServicePackModel>(serviceModel, HttpStatus.OK);
	}
	@DeleteMapping("/{serviceId}")
	public ResponseEntity<?> deleteService(
			@PathVariable Integer serviceId
//			, Authentication authentication
	) throws RecordNotFoundException {
		servicePackService.deleteService(serviceId);
		return new ResponseEntity<>(HttpStatus.OK);
	}
}

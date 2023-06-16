package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.util.Date;
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

	@GetMapping("/a")
	public ResponseEntity<String> test(){
		return new ResponseEntity<String>("123", HttpStatus.OK);
	}

	@PostMapping("")
	public ResponseEntity<?> createService(
			@Valid @RequestBody ServicePackModel model,
			Authentication authentication
	){
//		holder.
		Account currentAccount =(Account) authentication.getPrincipal();
		log.error(model.toString());
		ServicePack service = servicePackMapper.toEntity(model);
//		service.setCreateBy(currentAccount.getAccount_Employee().);
		service.setCreateDate(new Timestamp(new Date().getTime()));
		service.setRating(Double.valueOf(0));

		log.error(service.toString());
		if(service.getServiceId() != 0) {
			ExceptionResponse exceptionResponse = new ExceptionResponse(
					"Invalid field",
					"Service id can not be specified!"
			);
			return new ResponseEntity<>(exceptionResponse, HttpStatus.BAD_REQUEST);
		}
		service = servicePackService.save(service);
		return new ResponseEntity<ServicePackModel>(servicePackMapper.toModel(service), HttpStatus.CREATED);
	}

	@PatchMapping("/{serviceId}")
	public ResponseEntity<?> updateService(@Valid @RequestBody ServicePackModel model, @PathVariable Integer serviceId){

		if(model == null){
			ExceptionResponse exceptionResponse = new ExceptionResponse(
					"Required field unspecified",
					"Service id must be specified!"
			);
			return new ResponseEntity<>(exceptionResponse, HttpStatus.BAD_REQUEST);

		}

		ServicePack service = servicePackMapper.toEntity(model);
		if(serviceId == null) {
			ExceptionResponse exceptionResponse = new ExceptionResponse(
					"Required field unspecified",
					"Service id must be specified!"
			);
			return new ResponseEntity<>(exceptionResponse, HttpStatus.BAD_REQUEST);
		}
		service.setServiceId(serviceId);
		service = servicePackService.save(service);
		return new ResponseEntity<ServicePackModel>(servicePackMapper.toModel(service), HttpStatus.CREATED);
	}
}

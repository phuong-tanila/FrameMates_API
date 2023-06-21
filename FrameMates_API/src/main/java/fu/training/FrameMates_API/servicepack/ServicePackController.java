package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.account.Account;
<<<<<<< HEAD
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
=======
>>>>>>> c45423dba2a38372a03d4f93c14e9dc87377a444
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import jakarta.validation.Valid;
<<<<<<< HEAD
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;
=======
>>>>>>> c45423dba2a38372a03d4f93c14e9dc87377a444

import java.util.InvalidPropertiesFormatException;
import java.util.List;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

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
	public ResponseEntity getAll(){
		List<ServicePackModel> result = servicePackMapper.toModels(servicePackService.getAll());
		return new ResponseEntity<List<ServicePackModel>>(result, HttpStatus.OK);
	}

    @GetMapping("name")
    public ResponseEntity<List<ServicePack>> getByName(
            @RequestParam(defaultValue = "16") int pageSize
            , @RequestParam(defaultValue = "0") int pageNo
            , @RequestParam(defaultValue = "") String[] sort
            , @RequestParam() String name
    ) {

        Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
        Page page = servicePackService.getByName(name, pageable);
        return new ResponseEntity<List<ServicePack>>(page.getContent(), HttpStatus.OK);
    }

    @PostMapping("")
//	@PostAuthorize()
    public ResponseEntity<?> createService(
            @Valid @RequestBody ServicePackModel model,
            Authentication authentication
    ) throws InvalidPropertiesFormatException {
        Account currentAccount = (Account) authentication.getPrincipal();
        model.setCreateBy(currentAccount.getEmployee());
        if (model.getServiceId() != 0) {
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
        if (serviceId == null) {
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

    public ResponseEntity getById(@PathVariable int serviceId) throws RecordNotFoundException {
        var entity = servicePackService.getById(serviceId);
            return new ResponseEntity(entity, HttpStatus.OK);
    }

}

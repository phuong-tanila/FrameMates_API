package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountMapper;
import fu.training.FrameMates_API.account.AccountModel;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;

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
@RequestMapping("api/services")
public class ServicePackController {

    @Autowired
    private ServicePackService servicePackService;

    @Autowired
    private AccountMapper accountMapper;
	@Autowired
	private ServicePackMapper servicePackMapper;
	@GetMapping("")
	public ResponseEntity getAll(){
		List<ServicePackModel> result = servicePackService.getAll();
		return new ResponseEntity<>(result, HttpStatus.OK);
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
    ) throws InvalidPropertiesFormatException, NoSuchMethodException {
        Account currentAccount = (Account) authentication.getPrincipal();
        AccountModel currentAccountModel = accountMapper.toModel(currentAccount);
        model.setCreateBy(currentAccountModel.getEmployee());
        if (model.getServiceId() != 0) {
            throw new InvalidPropertiesFormatException("serviceId: service id must not be specified");
        }
        ServicePackModel serviceModel = servicePackService.createService(model);
//        serviceModel.setStatus();
        return new ResponseEntity<ServicePackModel>(serviceModel, HttpStatus.CREATED);
    }

    @PatchMapping("/{serviceId}")
    public ResponseEntity<?> updateService(
            @Valid @RequestBody ServicePackModel model
            , @PathVariable Integer serviceId
            , Authentication authentication
    ) throws InvalidPropertiesFormatException, RecordNotFoundException {
        if (serviceId == null) {
            throw new InvalidPropertiesFormatException("Service id must be specified!");
        }
        Account currentAccount = (Account) authentication.getPrincipal();
        model.setServiceId(serviceId);
        ServicePackModel serviceModel = servicePackService.updateService(model, currentAccount.getEmployee());
        return new ResponseEntity<ServicePackModel>(serviceModel, HttpStatus.OK);
    }

    @DeleteMapping("/{serviceId}")
    public ResponseEntity<?> deleteService(
            @PathVariable Integer serviceId
			, Authentication authentication
    ) throws RecordNotFoundException {
        Account currentAccount = (Account) authentication.getPrincipal();
//        currentAccount.get
        servicePackService.deleteService(serviceId, currentAccount.getEmployee());
        return new ResponseEntity<>(HttpStatus.OK);
    }

    public ResponseEntity getById(@PathVariable int serviceId) throws RecordNotFoundException {
        var entity = servicePackService.getById(serviceId);
            return new ResponseEntity(entity, HttpStatus.OK);
    }

}

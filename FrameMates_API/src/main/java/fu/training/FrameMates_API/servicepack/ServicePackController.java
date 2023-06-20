package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity<List<ServicePack>> getAll(
            @RequestParam(defaultValue = "16") int pageNum
            , @RequestParam(defaultValue = "1") int pageNo
            , @RequestParam(defaultValue = "") String[] sort
    ) {
//        Pageable pageable = PageableHelper
        return new ResponseEntity<List<ServicePack>>(servicePackService.getAll(), HttpStatus.OK);
    }


    @GetMapping("")
    public ResponseEntity<List<ServicePack>> getByName(
            @RequestParam(defaultValue = "16") int pageSize
            , @RequestParam(defaultValue = "1") int pageNo
            , @RequestParam(defaultValue = "") String[] sort
            , @RequestParam() String name
    ) {

        Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
        return new ResponseEntity<Page<ServicePack>>(servicePackService.getByName(name), HttpStatus.OK);
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

    public ResponseEntity getById(@PathVariable int serviceId) {
        try {
            var entity = servicePackService.getById(serviceId);
            return new ResponseEntity(entity, HttpStatus.OK);
        } catch (RecordNotFoundException ex) {
            return new ResponseEntity<ExceptionResponse>(
                    new ExceptionResponse("Record not found", ex.getMessage())
                    , HttpStatus.NOT_FOUND
            );
        }
    }

}

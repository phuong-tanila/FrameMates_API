package fu.training.FrameMates_API.customer;


import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/customers")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	@PostMapping()
	public ResponseEntity createCustomer(@RequestBody @Valid CustomerModel customer) throws JsonProcessingException, DupplicatedUserInfoException {
		CustomerModel customerModel = customerService.createCustomer(customer);
		return customerModel != null ? ResponseEntity.ok(customerModel) : ResponseEntity.unprocessableEntity().build();
	}

	@GetMapping()
	public ResponseEntity<?> getCustomerByEmailOrPhone(@RequestParam(value = "emailOrPhone") String emailOrPhone) {
		List<CustomerModel> customerModels = customerService.getCustomerByEmailOrPhone(emailOrPhone);

		return customerModels != null ? new ResponseEntity<>(customerModels, HttpStatus.OK)
				: new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
	}

	@GetMapping("/all")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> getAllCustomerByEmailOrPhoneOrName(
			@RequestParam(value = "emailOrPhone", defaultValue = "") String emailOrPhone,
			@RequestParam(defaultValue = "16") int pageSize
			, @RequestParam(defaultValue = "0") int pageNo
			, @RequestParam(defaultValue = "") String[] sort
	) {
		Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
		PaginationResponse<CustomerModel> customerModels = customerService.getCustomerByEmailOrPhoneOrName(emailOrPhone, pageable);

		return customerModels != null ? new ResponseEntity<>(customerModels, HttpStatus.OK)
				: new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
	}

	@PatchMapping("{customerId}")
	public  ResponseEntity updateCustomer(
			@Valid @RequestBody CustomerModel customerModel,
			Authentication authentication,
			@PathVariable int customerId
	) throws Exception {
		if(authentication == null) throw new Exception("You must logged in to do this function");
		var currentAccount = (Account) authentication.getPrincipal();
		var currentCustomer = currentAccount.getCustomer();
		if(currentCustomer == null){
			throw new Exception("You need to be a customer to do this function");
		}
		if(currentCustomer.getCustomerId() != customerId){
			throw new Exception("You are not allowed to do this function");
		}
		customerService.updateCustomer(customerModel);
		return new ResponseEntity(HttpStatus.OK);
	}

	@PutMapping("/ban/{customer_id}")
	public ResponseEntity<?> banCustomer(@PathVariable("customer_id") Integer customerId) {
		customerService.banCustomer(customerId);
		return new ResponseEntity<>("Ban customer successfully", HttpStatus.OK);
	}

	@PutMapping("/unban/{customer_id}")
	public ResponseEntity<?> unbanCustomer(@PathVariable("customer_id") Integer customerId) {
		customerService.unbanCustomer(customerId);
		return new ResponseEntity<>("Unban customer successfully", HttpStatus.OK);
	}

}

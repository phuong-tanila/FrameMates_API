package fu.training.FrameMates_API.customer;


import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	public ResponseEntity<?> getCustomerByEmailOrPhone(@RequestParam("emailOrPhone") String emailOrPhone) {
		List<CustomerModel> customerModels = customerService.getCustomerByEmailOrPhone(emailOrPhone);

		return customerModels != null ? new ResponseEntity<>(customerModels, HttpStatus.OK)
				: new ResponseEntity<>("Customer not found", HttpStatus.NOT_FOUND);
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

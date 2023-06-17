package fu.training.FrameMates_API.customer;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	@PostMapping()
	public ResponseEntity createCustomer(@RequestBody CustomerModel customer) {
		System.out.println(customer);
		CustomerModel customerModel = customerService.createCustomer(customer);
		return customerModel != null ? ResponseEntity.ok(customerModel) : ResponseEntity.unprocessableEntity().build();
	}

	@GetMapping()
	public ResponseEntity<?> getCustomerByEmailOrPhone(@RequestParam("emailOrPhone") String emailOrPhone) {
		CustomerModel customerModel = customerService.getCustomerByEmailOrPhone(emailOrPhone);

		return customerModel != null ? new ResponseEntity<>(customerModel, HttpStatus.OK)
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

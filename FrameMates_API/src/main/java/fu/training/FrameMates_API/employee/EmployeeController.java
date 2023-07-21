package fu.training.FrameMates_API.employee;


import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.employee.EmployeeService;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/employees")
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@PostMapping()
	public ResponseEntity createEmployee(@RequestBody @Valid EmployeeModel employee) throws DupplicatedUserInfoException {
		EmployeeModel employeeModel = employeeService.createEmployee(employee);
		return ResponseEntity.ok(employeeModel);
	}
	@PostMapping("/validate")
	public ResponseEntity validateEmployee(@RequestBody @Valid EmployeeModel employee) throws DupplicatedUserInfoException {

		return ResponseEntity.ok().build();
	}

	@GetMapping("/{accountId}")
	public ResponseEntity getByAccountId(@PathVariable int accountId) throws RecordNotFoundException {
		var employee = employeeService.findByAccountId(accountId);
		return new ResponseEntity<>(employee, HttpStatus.OK);
	}
	@GetMapping("/current")
	public ResponseEntity getCurrentEmployee(Authentication authentication) throws RecordNotFoundException {
		var employee = employeeService.getCurrentEmployee(authentication);
		return new ResponseEntity<>(employee, HttpStatus.OK);
	}
}

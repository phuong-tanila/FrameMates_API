package fu.training.FrameMates_API.employee;


import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.employee.EmployeeService;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
}

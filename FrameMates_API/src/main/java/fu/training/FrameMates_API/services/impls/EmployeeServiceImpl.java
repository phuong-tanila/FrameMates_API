package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.EmployeeRepository;
import fu.training.FrameMates_API.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
}

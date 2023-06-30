package fu.training.FrameMates_API.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private EmployeeMapper employeeMapper;
	@Override
	public EmployeeModel createEmployee(EmployeeModel employeeModel) {
		Employee employee = employeeMapper.toEntity(employeeModel);
		employee.setEmployeeId(null);
		employee = employeeRepository.save(employee);
		return  employeeMapper.toModel(employee);
	}
}

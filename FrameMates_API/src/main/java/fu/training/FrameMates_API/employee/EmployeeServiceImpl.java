package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeMapper mapper;
	@Autowired
	private EmployeeRepository employeeRepository;


	@Override
	public EmployeeModel findByAccountId(int accountId) throws RecordNotFoundException {
		Employee result = employeeRepository.findByAccountAccountId(accountId);
		if(result != null)
			return mapper.toModel(result);
		throw new RecordNotFoundException("Can not find employee by account id: " + accountId);
	}

	@Override
	public Employee findByEmployeeId(int employeeId) throws RecordNotFoundException {
		Employee result = employeeRepository.findById(employeeId).get();
		if(result != null)
			return result;
		throw new RecordNotFoundException("Can not find employee by id: " + employeeId);
	}
}

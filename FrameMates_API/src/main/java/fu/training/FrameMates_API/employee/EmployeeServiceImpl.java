package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountMapper;
import fu.training.FrameMates_API.account.AccountModel;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	@Autowired
	private EmployeeMapper employeeMapper;
	@Autowired
	private AccountMapper accountMapper;

	@Autowired
	private AccountService accountService;
	@Override
	public EmployeeModel createEmployee(EmployeeModel employeeModel) throws DupplicatedUserInfoException {
		Account mappedAccount = accountMapper.toEntity(employeeModel.getAccountModel());
		accountService.validateAccount(mappedAccount);
		Employee employee = employeeMapper.toEntity(employeeModel);
		mappedAccount.setRole("ROLE_EMPLOYEE");

		employee.setAccount(mappedAccount);
		employee.setEmployeeId(null);
		employee.setStatus(1);
		employee.setStudio(null);
		EmployeeModel returnedEmployee = employeeMapper.toModel(employeeRepository.save(employee));
		returnedEmployee.setAccountModel(accountMapper.toModel(employee.getAccount()));
		return returnedEmployee;
	}

	@Override
	public EmployeeModel findByAccountId(int accountId) throws RecordNotFoundException {
		Employee result = employeeRepository.findByAccountAccountId(accountId);
		EmployeeModel employeeModel = employeeMapper.toModel(result);
		if(result != null) {
			AccountModel accountModel = accountMapper.toModel(result.getAccount());
			employeeModel.setAccountModel(accountModel);
			return employeeModel;
		}
		throw new RecordNotFoundException("Can not find employee by account id: " + accountId);
	}

	@Override
	public Employee updateEmployeeUsingEntity(Employee employee) {
		return employeeRepository.save(employee);
	}

	@Override
	public Employee findByEmployeeId(int employeeId) throws RecordNotFoundException {
		Employee result = employeeRepository.findById(employeeId).get();
		if(result != null)
			return result;
		throw new RecordNotFoundException("Can not find employee by id: " + employeeId);
	}




	@Override
	public EmployeeModel getCurrentEmployee(Authentication authentication) throws RecordNotFoundException {
		Account account = (Account) authentication.getPrincipal();
		EmployeeModel employeeModel = findByAccountId(account.getAccountId());
		return employeeModel;
	}
}

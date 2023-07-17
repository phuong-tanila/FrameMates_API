package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.security.core.Authentication;

public interface EmployeeService {

    EmployeeModel createEmployee(EmployeeModel employeeModel) throws DupplicatedUserInfoException;
    EmployeeModel findByAccountId(int accountId) throws RecordNotFoundException;

    Employee updateEmployeeUsingEntity(Employee employee);
    Employee findByEmployeeId(int employeeId) throws RecordNotFoundException;

    EmployeeModel getCurrentEmployee(Authentication authentication) throws RecordNotFoundException;
}

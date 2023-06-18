package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

public interface EmployeeService {
    EmployeeModel findByAccountId(int accountId) throws RecordNotFoundException;
}

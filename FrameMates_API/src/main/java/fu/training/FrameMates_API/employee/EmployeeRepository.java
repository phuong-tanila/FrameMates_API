package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.employee.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
    Employee findByAccountAccountId(int accountId);

//    Employee findByStudio_StudioId(int studioId);
}

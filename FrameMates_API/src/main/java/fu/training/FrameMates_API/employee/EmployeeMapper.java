package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface EmployeeMapper {

    Employee toEntity (EmployeeModel model);

    EmployeeModel toModel (Employee entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Employee;
import fu.training.FrameMates_API.models.EmployeeModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface EmployeeMapper {

    Employee toEntity (EmployeeModel model);

    EmployeeModel toModel (Employee entity);
}

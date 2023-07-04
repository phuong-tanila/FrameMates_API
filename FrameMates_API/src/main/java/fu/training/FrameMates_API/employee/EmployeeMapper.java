package fu.training.FrameMates_API.employee;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface EmployeeMapper {


//    @Mapping(source = "studio", target = "studio")

    Employee toEntity (EmployeeModel model);


    EmployeeModel toModel (Employee entity);
}

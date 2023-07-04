package fu.training.FrameMates_API.employee;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:45+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class EmployeeMapperImpl implements EmployeeMapper {

    @Override
    public Employee toEntity(EmployeeModel model) {
        if ( model == null ) {
            return null;
        }

        Employee employee = new Employee();

        return employee;
    }

    @Override
    public EmployeeModel toModel(Employee entity) {
        if ( entity == null ) {
            return null;
        }

        EmployeeModel employeeModel = new EmployeeModel();

        return employeeModel;
    }
}

package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.administrator.AdministratorModel;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.employee.EmployeeModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface AccountMapper {

//    @Mapping(source = "employee", target = "employee")
//    @Mapping(source = "customer", target = "customer")
//    @Mapping(source = "administrator", target = "administrator")
    Account toEntity (AccountModel model);
//    @Mapping(source = "employee", target = "employee")
//    @Mapping(source = "customer", target = "customer")
//    @Mapping(source = "administrator", target = "administrator")
    @Mapping(source = "password", target = "password", ignore = true)
    AccountModel toModel (Account entity);
}

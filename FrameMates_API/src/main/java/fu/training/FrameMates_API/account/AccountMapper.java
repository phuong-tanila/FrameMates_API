package fu.training.FrameMates_API.account;

import org.mapstruct.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public abstract class AccountMapper {
    @Autowired
    private PasswordEncoder passwordEncoder;
//    @Mapping(source = "employee", target = "employee")
//    @Mapping(source = "customer", target = "customer")
//    @Mapping(source = "administrator", target = "administrator")
    @Mapping(source = "password", target = "password", qualifiedByName = "encryptPasswordFromModel")
    @Mapping(source = "employee.studio", target = "employee.studio", ignore = true)
    public abstract Account toEntity (AccountModel model);
//    @Mapping(source = "employee", target = "employee")
//    @Mapping(source = "customer", target = "customer")
//    @Mapping(source = "administrator", target = "administrator")
    @Mapping(source = "password", target = "password", ignore = true)
    @Mapping(source = "employee.studio", target = "employee.studio", ignore = true)
    public abstract AccountModel toModel (Account entity);
    @Named("encryptPasswordFromModel")
    String encryptPasswordFromModel(String password){
        return passwordEncoder.encode(password);
    }


}

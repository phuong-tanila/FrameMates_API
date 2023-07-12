package fu.training.FrameMates_API.customer;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface CustomerMapper {
    @Mapping(target = "account", source = "accountModel")
    Customer toEntity (CustomerModel model);
    @Mapping(target = "accountModel", source = "account")
    @Mapping(target = "accountModel.password", source = "account.password", ignore = true)
    CustomerModel toModel (Customer entity);

    List<CustomerModel> toModels (List<Customer> entities);
}

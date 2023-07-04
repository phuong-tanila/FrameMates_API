package fu.training.FrameMates_API.customer;

import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface CustomerMapper {
    Customer toEntity (CustomerModel model);
    CustomerModel toModel (Customer entity);

    List<CustomerModel> toModels (List<Customer> entities);
}

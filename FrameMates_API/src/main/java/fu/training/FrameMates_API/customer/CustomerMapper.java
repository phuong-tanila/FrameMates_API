package fu.training.FrameMates_API.customer;

import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface CustomerMapper {
    Customer toEntity (CustomerModel model);
    CustomerModel toModel (Customer entity);
}

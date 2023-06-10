package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Customer;
import fu.training.FrameMates_API.models.CustomerModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CustomerMapper {

    Customer toEntity (CustomerModel model);

    CustomerModel toModel (Customer entity);
}

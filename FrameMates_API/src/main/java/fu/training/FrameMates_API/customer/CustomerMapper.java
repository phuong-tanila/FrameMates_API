package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface CustomerMapper {

    Customer toEntity (CustomerModel model);

    CustomerModel toModel (Customer entity);
}

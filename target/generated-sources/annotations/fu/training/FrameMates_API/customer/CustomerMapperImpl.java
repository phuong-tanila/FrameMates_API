package fu.training.FrameMates_API.customer;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class CustomerMapperImpl implements CustomerMapper {

    @Override
    public Customer toEntity(CustomerModel model) {
        if ( model == null ) {
            return null;
        }

        Customer customer = new Customer();

        return customer;
    }

    @Override
    public CustomerModel toModel(Customer entity) {
        if ( entity == null ) {
            return null;
        }

        CustomerModel customerModel = new CustomerModel();

        return customerModel;
    }
}

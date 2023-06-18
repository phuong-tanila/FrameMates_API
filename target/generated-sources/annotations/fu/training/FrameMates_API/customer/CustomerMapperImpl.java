package fu.training.FrameMates_API.customer;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
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

        customer.setCustomerId( model.getCustomerId() );
        customer.setBirthDate( model.getBirthDate() );
        customer.setCreateDate( model.getCreateDate() );
        customer.setStatus( model.getStatus() );
        customer.setAddress( model.getAddress() );

        return customer;
    }

    @Override
    public CustomerModel toModel(Customer entity) {
        if ( entity == null ) {
            return null;
        }

        CustomerModel customerModel = new CustomerModel();

        customerModel.setCustomerId( entity.getCustomerId() );
        customerModel.setBirthDate( entity.getBirthDate() );
        customerModel.setCreateDate( entity.getCreateDate() );
        customerModel.setStatus( entity.getStatus() );
        customerModel.setAddress( entity.getAddress() );

        return customerModel;
    }
}

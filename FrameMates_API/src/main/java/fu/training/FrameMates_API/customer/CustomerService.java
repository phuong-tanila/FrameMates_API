package fu.training.FrameMates_API.customer;

import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;

import java.util.List;

public interface CustomerService {
    long count();
    CustomerModel createCustomer(CustomerModel customer) throws JsonProcessingException, DupplicatedUserInfoException;

    List<CustomerModel> getCustomerByEmailOrPhone(String emailOrPhone);

    void banCustomer(Integer customerId);

    void unbanCustomer(Integer customerId);
}

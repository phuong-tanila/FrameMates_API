package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface CustomerService {
    long count();
    CustomerModel createCustomer(CustomerModel customer) throws JsonProcessingException, DupplicatedUserInfoException;

    List<CustomerModel> getCustomerByEmailOrPhone(String emailOrPhone);

    Customer getCustomerById(int customerId) throws RecordNotFoundException;

    List<CustomerModel> getCustomersByUsername(String username) throws RecordNotFoundException;

    CustomerModel getCustomerModelById(int customerId) throws RecordNotFoundException;

    PaginationResponse<CustomerModel> getCustomerByEmailOrPhoneOrName(String searchKey, Pageable pageable, int status);

    void banCustomer(Integer customerId);

    void unbanCustomer(Integer customerId);

    CustomerModel updateCustomer(CustomerModel customerModel);
}

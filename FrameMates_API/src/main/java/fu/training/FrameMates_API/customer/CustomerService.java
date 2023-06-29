package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

public interface CustomerService {
    long count();
    CustomerModel createCustomer(CustomerModel customer);

    CustomerModel getCustomerByEmailOrPhone(String emailOrPhone);

    Customer getCustomerById(int customerId) throws RecordNotFoundException;
    void banCustomer(Integer customerId);

    void unbanCustomer(Integer customerId);
}

package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;

public interface CustomerService {
    long count();
    CustomerModel createCustomer(CustomerModel customer);

    CustomerModel getCustomerByEmailOrPhone(String emailOrPhone);

    void banCustomer(Integer customerId);

    void unbanCustomer(Integer customerId);
}

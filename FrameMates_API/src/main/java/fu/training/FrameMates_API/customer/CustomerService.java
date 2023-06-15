package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;

public interface CustomerService {
    long count();
    Customer createCustomer(Customer customer);

    CustomerModel getCustomerByEmailOrPhone(String emailOrPhone);

    void banCustomer(Integer customerId);

    void unbanCustomer(Integer customerId);
}

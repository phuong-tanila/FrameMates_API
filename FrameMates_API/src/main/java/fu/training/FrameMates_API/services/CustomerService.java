package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.entities.Customer;

public interface CustomerService {
    long count();
    Customer createCustomer(Customer customer);


}

package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.entities.Customer;
import fu.training.FrameMates_API.repositories.CustomerRepository;
import fu.training.FrameMates_API.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public long count() {
		return customerRepository.count();
	}

	@Override
	public Customer createCustomer(Customer customer) {
		return customerRepository.save(customer);
	}
}

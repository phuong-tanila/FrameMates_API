package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public long count() {
		return customerRepository.count();
	}

	@Override
	public CustomerModel createCustomer(CustomerModel customer) {
		return customerMapper.toModel(customerRepository.save(customerMapper.toEntity(customer)));
	}

	@Override
	public CustomerModel getCustomerByEmailOrPhone(String emailOrPhone) {
		Customer customer = customerRepository.findByAccount_EmailOrAccount_Phone(emailOrPhone, emailOrPhone)
				.orElse(null);
		return customer == null ? null : customerMapper.toModel(customer);
	}

	@Override
	public void banCustomer(Integer customerId) {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new IllegalStateException("Customer ID not found"));
		customer.setStatus(0);
	}

	@Override
	public void unbanCustomer(Integer customerId) {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new IllegalStateException("Customer ID not found"));
		customer.setStatus(1);
	}


}

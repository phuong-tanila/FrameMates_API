package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountMapper;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public long count() {
		return customerRepository.count();
	}

	@Override
	@Transactional
	public CustomerModel createCustomer(CustomerModel customerModel) {
		Account account = accountMapper.toEntity(customerModel.getAccountModel());
		Customer customer = customerMapper.toEntity(customerModel);
		customer.setAccount(account);
		CustomerModel returnCustomer = customerMapper.toModel(customerRepository.save(customer));
		returnCustomer.setAccountModel(accountMapper.toModel(customer.getAccount()));
		return returnCustomer;
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

package fu.training.FrameMates_API.customer;

import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountMapper;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private AccountService accountService;
	@Override
	public long count() {
		return customerRepository.count();
	}

	@Override
	@Transactional
	public CustomerModel createCustomer(CustomerModel customerModel) throws JsonProcessingException, DupplicatedUserInfoException {
		Account mappedAccount = accountMapper.toEntity(customerModel.getAccountModel());
		accountService.validateAccount(mappedAccount);
		Customer customer = customerMapper.toEntity(customerModel);
		mappedAccount.setRole("ROLE_CUSTOMER");
		customer.setAccount(mappedAccount);
		customer.setStatus(1);
		customer.setCreateDate(new Timestamp(System.currentTimeMillis()));
		CustomerModel returnCustomer = customerMapper.toModel(customerRepository.save(customer));
		returnCustomer.setAccountModel(accountMapper.toModel(customer.getAccount()));
		return returnCustomer;
	}

	@Override
	public List<CustomerModel> getCustomerByEmailOrPhone(String emailOrPhone) {
		List<Customer> customer = customerRepository.findByAccount_EmailContainingOrAccount_PhoneContaining(emailOrPhone, emailOrPhone);
		return customer == null ? null : customerMapper.toModels(customer);
	}

	@Override
	public Customer getCustomerById(int customerId) throws RecordNotFoundException {
		Optional<Customer> result = customerRepository.findById(customerId);
		if(result.isEmpty()) throw new RecordNotFoundException("Can't find customer by id: " + customerId);
		return result.get();
	}

	@Override
	public void banCustomer(Integer customerId) {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new RecordNotFoundException("Customer ID not found"));
		customer.setStatus(0);
		customerRepository.save(customer);
	}

	@Override
	public void unbanCustomer(Integer customerId) {
		Customer customer = customerRepository.findById(customerId)
				.orElseThrow(() -> new RecordNotFoundException("Customer ID not found"));
		customer.setStatus(1);
		customerRepository.save(customer);
	}


}

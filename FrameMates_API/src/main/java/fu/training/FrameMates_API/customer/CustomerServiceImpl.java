package fu.training.FrameMates_API.customer;

import com.fasterxml.jackson.core.JsonProcessingException;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountMapper;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.sql.Timestamp;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Value("${default.customer.avatar}")
	private String defaultAvatarUrl;
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private AccountService accountService;

	@Autowired
	private PasswordEncoder passwordEncoder;
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
		mappedAccount.setAvatar(defaultAvatarUrl);
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
		Optional<Customer> result = customerRepository.findByCustomerIdAndStatus(customerId, 1);
		if(result.isEmpty()) throw new RecordNotFoundException("Can't find customer by id: " + customerId);
		return result.get();
	}

	@Override
	public List<CustomerModel> getCustomersByUsername(String username) throws RecordNotFoundException {
		Pageable pageable = PageRequest.of(0, 5);
		Page page = customerRepository.findAllByAccount_UsernameContainingAndStatus(username, 1, pageable);
		List<Customer> result = page.getContent();
		return customerMapper.toModels(result);
	}

	public CustomerModel getCustomerModelById(int customerId) throws  RecordNotFoundException{
		return customerMapper.toModel(getCustomerById(customerId));
	}
	@Override
	public PaginationResponse<CustomerModel> getCustomerByEmailOrPhoneOrName(String searchKey, Pageable pageable, int status) {
		PaginationResponse<CustomerModel> result = new PaginationResponse<>();
		Page<Customer> customerPage = null;
		if(status == 2) {
			customerPage = customerRepository.findAllByAccount_FullNameContainingOrAccount_EmailContainingOrAccount_PhoneContaining(searchKey ,searchKey , searchKey, pageable);
		}else{
			customerPage = customerRepository.findAllByAccount_FullNameContainingOrAccount_EmailContainingOrAccount_PhoneContainingAndStatus(searchKey ,pageable, status);
		}
		List<Customer> customers = customerPage.getContent();
		customers.forEach(c -> {
			c.getAccount().setCustomer(null);
		});
		result.setItems(customerMapper.toModels(customers));
		result.setTotalItems(customerPage.getTotalElements());
		result.setTotalPageNum(customerPage.getTotalPages());
		result.setPageSize(customerPage.getSize());
		result.setPageNum(customerPage.getNumber());
//		result.setTotalItems();
		return result;
	}

	@Override
	public void banCustomer(Integer customerId) {
		Customer customer = customerRepository.findByCustomerIdAndStatus(customerId, 1)
				.orElseThrow(() -> new RecordNotFoundException("Customer ID not found"));
		customer.setStatus(0);
		customerRepository.save(customer);
	}

	@Override
	public void unbanCustomer(Integer customerId) {
		Customer customer = customerRepository.findByCustomerIdAndStatus(customerId, 0)
				.orElseThrow(() -> new RecordNotFoundException("Customer ID not found"));
		customer.setStatus(1);
		customerRepository.save(customer);
	}

	@Override
	public CustomerModel updateCustomer(CustomerModel customerModel) {
		var updatingCustomer = getCustomerById(customerModel.getCustomerId());
		updatingCustomer.setAddress(customerModel.getAddress());
		updatingCustomer.setBirthDate(customerModel.getBirthDate());
		var customerAccount = updatingCustomer.getAccount();
		customerAccount.setAvatar(customerModel.getAccountModel().getAvatar());
		customerAccount.setFullName(customerModel.getAccountModel().getFullName());
		customerAccount.setPassword(passwordEncoder.encode(customerModel.getAccountModel().getPassword()));
		customerRepository.save(updatingCustomer);
		return null;
	}


}


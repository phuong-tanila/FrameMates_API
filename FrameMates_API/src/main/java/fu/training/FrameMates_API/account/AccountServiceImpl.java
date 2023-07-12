package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.share.exceptions.DupplicatedUserInfoException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class  AccountServiceImpl implements AccountService, UserDetailsService {

    @Autowired
    AccountRepository accountRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = accountRepository.findByUsernameOrPhoneOrEmail(username);
        if(account == null) throw new UsernameNotFoundException("Username or phone not found: " + username);
        return account;
    }

    @Override
    public List<Account> findAccountsByUsernameOrPhone(String username, String phone) {
        return accountRepository.findAllByUsernameOrPhone(username, phone);
    }


    @Override
    public List<Account> findAll() {
        return  accountRepository.findAll();
    }
    @Override
    public Account createAccount(Account account){
        return accountRepository.save(account);
    }

    @Override
    public Account findAccountByEmployeeId(int employeeId) throws RecordNotFoundException {
        Account result = accountRepository.findByEmployeeEmployeeId(employeeId);
        if(result == null) throw  new RecordNotFoundException("Employee id not found");
        return result;
    }

    @Override
    public void validateAccount(Account mappedAccount) throws DupplicatedUserInfoException {
        List<Account> accountList = findAccountsByUsernameOrPhone(mappedAccount.getUsername(), mappedAccount.getPhone());
        if(accountList != null && !accountList.isEmpty()) {
            Set<String> errorMessages = new HashSet<>();
            for (Account account: accountList) {
                if(account.getUsername().equals(mappedAccount.getUsername())){
                    errorMessages.add("username: username is existed in our system");
                }
                if(account.getPhone().equals(mappedAccount.getPhone())){
                    errorMessages.add("phone: phone is existed in our system");
                }
                if(account.getEmail().equals(mappedAccount.getEmail())){
                    errorMessages.add("email: email is existed in our system");
                }
            }
            throw new DupplicatedUserInfoException(errorMessages.toArray(new String[0]));
        }
    }
}

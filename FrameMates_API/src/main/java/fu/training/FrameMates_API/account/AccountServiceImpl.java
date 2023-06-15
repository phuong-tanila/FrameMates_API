package fu.training.FrameMates_API.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class  AccountServiceImpl implements AccountService, UserDetailsService {

    @Autowired
    AccountRepository accountRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Account account = accountRepository.findByUsernameOrPhone(username);
        if(account == null) throw new UsernameNotFoundException("Username or phone not found: " + username);
        return account;
    }

    @Override
    public List<Account> findAll() {
        return  accountRepository.findAll();
    }
    @Override
    public Account createAccount(Account account){
        return accountRepository.save(account);
    }
}

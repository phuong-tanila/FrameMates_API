package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.account.Account;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

public interface AccountService {
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException ;

    List<Account> findAll();

    Account createAccount(Account account);
}

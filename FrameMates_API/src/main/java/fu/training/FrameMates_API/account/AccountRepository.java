package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.account.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    @Query("SELECT a FROM Account a WHERE a.username = :credential OR a.phone = :credential OR a.email = :credential")
    Account findByUsernameOrPhoneOrEmail(String credential);

    @Query("SELECT a FROM Account a WHERE a.username = :username OR a.phone = :phone")
    List<Account> findAllByUsernameOrPhone(String username, String phone);

}

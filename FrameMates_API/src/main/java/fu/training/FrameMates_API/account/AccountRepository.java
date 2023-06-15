package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.account.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    @Query("SELECT a FROM Account a WHERE a.username = :credetial OR a.phone = :credetial")
    Account findByUsernameOrPhone(String credetial);
}

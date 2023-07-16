package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    List<Customer> findByAccount_EmailContainingOrAccount_PhoneContaining(String email, String phone);

    Page<Customer> findAllByAccount_FullNameContainingOrAccount_EmailContainingOrAccount_PhoneContaining(String name, String email, String phone, Pageable pageable);
    @Query("select c from Customer c where c.status = :status and (c.account.fullName like concat('%', :searchKey, '%') or c.account.email like concat('%', :searchKey, '%') or c.account.phone like concat('%', :searchKey, '%'))")
    Page<Customer> findAllByAccount_FullNameContainingOrAccount_EmailContainingOrAccount_PhoneContainingAndStatus(String searchKey, Pageable pageable, int status);

    Optional<Customer> findByCustomerIdAndStatus(int id, int status);

    Page<Customer> findAllByAccount_UsernameContainingAndStatus(String username, int status, Pageable pageable);


}

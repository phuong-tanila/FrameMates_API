package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    List<Customer> findByAccount_EmailContainingOrAccount_PhoneContaining(String email, String phone);
}

package fu.training.FrameMates_API.customer;

import fu.training.FrameMates_API.customer.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    Optional<Customer> findByAccount_EmailOrAccount_Phone(String email, String phone);
}

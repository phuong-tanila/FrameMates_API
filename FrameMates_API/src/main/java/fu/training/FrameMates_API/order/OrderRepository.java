package fu.training.FrameMates_API.order;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
//    Order createOrder(Order order);
    List<Order> findOrdersByStatus(int status);
}

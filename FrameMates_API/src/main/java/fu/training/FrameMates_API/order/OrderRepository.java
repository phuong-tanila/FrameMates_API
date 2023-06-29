package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
//    Order createOrder(Order order);
}

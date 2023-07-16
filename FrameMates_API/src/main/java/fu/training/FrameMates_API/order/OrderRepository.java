package fu.training.FrameMates_API.order;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
//    Order createOrder(Order order);
    Page<Order> findOrdersByStatus(int status, Pageable pageable);

    List<Order> findByOrderDetails_ServicePack_Studio_StudioIdOrderByOrderIdDesc(int studioID);

    List<Order> findByOrderDetails_ServicePack_Studio_StudioIdAndOrderDetails_RatingNotNull(int studioID);
    List<Order> findByCustomer_CustomerIdOrderByOrderIdDesc(int customerId);


}

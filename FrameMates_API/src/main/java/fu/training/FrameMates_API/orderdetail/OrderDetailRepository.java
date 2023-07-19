package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.orderdetail.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    List<OrderDetail> getOrderDetailByServicePack_Studio_StudioIdAndRatingNotNull(int studioId);
    List<OrderDetail> getOrderDetailByOrder_OrderId(int studioId);
    List<OrderDetail> getOrderDetailByOrder_OrderIdAndRatingNotNull(int studioId);

    List<OrderDetail> getOrderDetailByServicePack_ServiceIdAndRatingNotNull(int serviceId);

    OrderDetail findByOrder_Customer_CustomerIdAndOrderDetailId(int customerId, int orderDetailId);


}

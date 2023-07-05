package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import org.springframework.data.domain.Pageable;

public interface OrderService {
    OrderModel createOrder(OrderModel orderModel) throws RecordNotFoundException;

    void updateOrderStatus(int id, String status) throws RecordNotFoundException, InvalidStatusStringException;

    OrderModel getOrderById(int id) throws RecordNotFoundException;
    PaginationResponse<OrderModel> getOrdersByStatus(String status, Pageable pageable) throws InvalidStatusStringException;
}

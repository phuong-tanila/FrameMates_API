package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

import java.util.List;

public interface OrderService {
    OrderModel createOrder(OrderModel orderModel) throws RecordNotFoundException;

    void updateOrderStatus(int id, String status) throws RecordNotFoundException, InvalidStatusStringException;

    OrderModel getOrderById(int id) throws RecordNotFoundException;

    List<OrderModel> getOrdersBystatus(String status) throws InvalidStatusStringException;


}

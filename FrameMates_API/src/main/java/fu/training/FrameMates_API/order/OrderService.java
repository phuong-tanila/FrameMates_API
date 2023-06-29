package fu.training.FrameMates_API.order;

public interface OrderService {
    OrderModel createOrder(OrderModel orderModel);

    void cancelOrder(int id);
}

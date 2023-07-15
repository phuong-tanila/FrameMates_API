package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

import java.util.List;

public interface OrderDetailService {
    OrderDetail createOrderDetails(OrderDetail orderDetail);

    List<OrderDetailModel> getFeedbacksByStudioId(int studioId);
    List<OrderDetailModel> getFeedbacksByServiceId(int studioId);
    List<OrderDetailModel> getFeedbacksByOrderId(int orderId);
}

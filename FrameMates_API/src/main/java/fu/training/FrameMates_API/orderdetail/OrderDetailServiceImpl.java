package fu.training.FrameMates_API.orderdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Autowired
	private OrderDetailMapper orderDetailMapper;
	public OrderDetail createOrderDetails(OrderDetail orderDetails){
		return orderDetailRepository.save(orderDetails);
	}

	@Override
	public List<OrderDetailModel> getFeedbacksByStudioId(int studioId) {
		return orderDetailMapper.toModels(orderDetailRepository.getOrderDetailByServicePack_Studio_StudioIdAndRatingNotNull(studioId));
	}

	@Override
	public List<OrderDetailModel> getFeedbacksByServiceId(int serviceId) {
		return orderDetailMapper.toModels(orderDetailRepository.getOrderDetailByServicePackServiceId(serviceId));
	}

	@Override
	public List<OrderDetailModel> getFeedbacksByOrderId(int orderId) {
		return orderDetailMapper.toModels(orderDetailRepository.getOrderDetailByOrder_OrderId(orderId));
	}
}

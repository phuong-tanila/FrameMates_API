package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;
@Slf4j
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private  OrderMapper orderMapper;
	@Override
	public OrderModel createOrder(OrderModel orderModel){

		Order orderEntity = orderMapper.toEntity(orderModel);
		orderEntity.setOrderId(null);
		orderEntity.setOrderDate(new Timestamp(System.currentTimeMillis()));
		List<OrderDetailModel> orderDetailModels = orderModel.getOrder_OrderDetail().stream().toList();
		for (int i = 0; i < orderDetailModels.size(); i++) {
			var orderDetail = orderDetailModels.get(i);
			var serviceId = orderDetail.getServicePackModel();
		}
		orderEntity.setStatus(OrderStatus.CREATED.ordinal());
		return orderMapper.toModel(orderRepository.save(orderEntity));
	}
	@Override
	public void cancelOrder(int id){

	}
}

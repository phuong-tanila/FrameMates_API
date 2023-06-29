package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerService;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailMapper;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import fu.training.FrameMates_API.orderdetail.OrderDetailService;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.sql.Timestamp;
import java.util.*;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ServicePackService servicePackService;
	@Autowired
	private  OrderMapper orderMapper;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrderDetailMapper orderDetailMapper;
	@Override
	public OrderModel createOrder(OrderModel orderModel) throws RecordNotFoundException {

		Order orderEntity = orderMapper.toEntity(orderModel);
		orderEntity.setOrderId(null);
		orderEntity.setOrderDate(new Timestamp(System.currentTimeMillis()));
		Customer customer = customerService.getCustomerById(orderModel.getCustomer().getCustomerId());
		orderEntity.setCustomer(customer);
		List<OrderDetailModel> orderDetailModels = orderModel.getOrder_OrderDetail().stream().toList();
		Set<OrderDetail> orderDetails = new HashSet<>();
		for (int i = 0; i < orderDetailModels.size(); i++) {
			var orderDetailModel = orderDetailModels.get(i);
			var orderDetailEntity = orderDetailMapper.toEntity(orderDetailModel);
			var serviceId = orderDetailModel.getServicePackModel().getServiceId();
			var servicePack = servicePackService.getServiceById(serviceId);
			orderDetailEntity.setServicePack(servicePack);
			orderDetails.add(orderDetailService.createOrderDetails(orderDetailEntity));
		}
		orderEntity.setStatus(OrderStatus.PENDING.ordinal());
		orderEntity.setOrder_OrderDetail(orderDetails);
		return orderMapper.toModel(orderRepository.save(orderEntity));
	}
	public Order getById(int id) throws RecordNotFoundException {
		Optional<Order> result = orderRepository.findById(id);
		if(result.isEmpty())
			throw new RecordNotFoundException("Can not find order by id: " + id);
		return result.get();
	}
//	public Order getByStatus(int status) throws  RecordNotFoundException{
//
//	}
	@Override
	public void updateOrderStatus(int id, String status) throws RecordNotFoundException, InvalidStatusStringException {
		Order orderEntity = getById(id);
//		if(orderEntity.get)
		orderEntity.setStatus(EnumConverter.convertStringToEnumValue(status, OrderStatus.class));
		orderRepository.save(orderEntity);
	}

	@Override
	public OrderModel getOrderById(int id) throws RecordNotFoundException {
		return orderMapper.toModel(getById(id));
	}

	@Override
	public List<OrderModel> getOrdersBystatus(String status) throws InvalidStatusStringException {

		int intStatus = EnumConverter.convertStringToEnumValue(status, OrderStatus.class);
		return orderMapper.toModels(orderRepository.findOrdersByStatus(intStatus));
	}

}

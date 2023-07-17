package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerService;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailMapper;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import fu.training.FrameMates_API.orderdetail.OrderDetailService;
import fu.training.FrameMates_API.servicepack.ServicePackService;
import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import fu.training.FrameMates_API.studio.Studio;
import jakarta.persistence.EntityManager;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	private EntityManager entityManager;
	@Autowired
	private AccountService accountService;

	@Autowired
	private  OrderMapper orderMapper;
	@Autowired
	private OrderDetailService orderDetailService;
	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@Override
	@Transactional
	public OrderModel createOrder(OrderModel orderModel) throws RecordNotFoundException {

		Order orderEntity = orderMapper.toEntity(orderModel);
		orderEntity.setOrderId(null);
		orderEntity.setOrderDate(new Timestamp(System.currentTimeMillis()));
		Customer customer = customerService.getCustomerById(orderModel.getCustomer().getCustomerId());
		orderEntity.setCustomer(customer);
		List<OrderDetailModel> orderDetailModels = orderModel.getOrderDetails().stream().toList();
		Set<OrderDetail> orderDetails = new HashSet<>();
		for (int i = 0; i < orderDetailModels.size(); i++) {
			var orderDetailModel = orderDetailModels.get(i);
			var orderDetailEntity = orderDetailMapper.toEntity(orderDetailModel);
			var serviceId = orderDetailModel.getServicePack().getServiceId();
			var servicePack = servicePackService.getServiceById(serviceId);
			orderDetailEntity.setServicePack(servicePack);
			orderDetailEntity.setOrder(orderEntity);
			orderDetails.add(orderDetailEntity);

		}
		orderEntity.setStatus(OrderStatus.PENDING.ordinal());
		orderEntity.setOrderDetails(orderDetails);
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

	private List<OrderModel> getOrdersByStudio(Studio studio){
		return orderMapper.toModels(orderRepository.findByOrderDetails_ServicePack_Studio_StudioIdOrderByOrderIdDesc(studio.getStudioId()));
	}
	private List<OrderModel> getOrdersByCustomer(Customer customer){
		return orderMapper.toModels(orderRepository.findByCustomer_CustomerIdOrderByOrderIdDesc(customer.getCustomerId()));
	}
	@Override
	public List<OrderModel> getOrderByUser(Authentication authentication) {
		List<OrderModel> result = new ArrayList<>();
		var currentAccount = (Account) authentication.getPrincipal();
		var currentEmployee = currentAccount.getEmployee();
		if(currentEmployee != null && currentEmployee.getStudio() != null){
			result = getOrdersByStudio(currentEmployee.getStudio());
		}else if (currentAccount.getCustomer() != null){
			result = getOrdersByCustomer(currentAccount.getCustomer());
		}
		return result;
	}

	@Override
	public PaginationResponse<OrderModel> getOrdersByStatus(String status, Pageable pageable, Authentication authentication) throws InvalidStatusStringException {

		int intStatus = EnumConverter.convertStringToEnumValue(status, OrderStatus.class);
		Page<Order> orders = orderRepository.findOrdersByStatus(intStatus, pageable);

		if(orders.isEmpty()) throw new RecordNotFoundException("The list is empty");

		PaginationResponse<OrderModel> result = new PaginationResponse<>();
		result.setItems(orderMapper.toModels(orders.getContent()));
		result.setPageNum(orders.getNumber());
		result.setPageSize(orders.getSize());
		result.setTotalPageNum(orders.getTotalPages());
		result.setTotalItems(orders.getTotalElements());
		return result;
	}

	@Override
	public List<OrderModel> getFeedbackByStudioId(Integer studioId) {
		List<Order> orders = orderRepository.findByOrderDetails_ServicePack_Studio_StudioIdAndOrderDetails_RatingNotNull(studioId);

		return orderMapper.toModels(orders);
	}

	@Override
	public List<OrderModel> getOrdersByCurrentUserIncludeOrderDetails(Authentication authentication) {
		var currentAccount = (Account) authentication.getPrincipal();
		var currentCustomer = currentAccount.getCustomer();

		List<Order> orders = orderRepository.findByCustomer_CustomerIdOrderByOrderIdDesc(currentCustomer.getCustomerId());
		return orderMapper.toModelsIncludeOrderDetails(orders);

	}

}

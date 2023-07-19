package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
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
		return orderDetailMapper.toModels(orderDetailRepository.getOrderDetailByServicePack_ServiceIdAndRatingNotNull(serviceId));
	}

	@Override
	public List<OrderDetailModel> getFeedbacksByOrderId(int orderId) {
		return orderDetailMapper.toModels(orderDetailRepository.getOrderDetailByOrder_OrderIdAndRatingNotNull(orderId));
	}

	@Override
	public OrderDetailModel createFeedBack(OrderDetailModel model, Authentication authentication) throws IllegalAccessException {
		if(authentication == null ) throw  new MissingBearerTokenException();
		var currentUser = (Account) authentication.getPrincipal();
		var currentCustomer = currentUser.getCustomer();
		if(currentCustomer == null) throw  new IllegalAccessException("You are not allowed to do this function!");

		var entity = orderDetailMapper.toEntity(model);

		var entityInDb = orderDetailRepository.findByOrder_Customer_CustomerIdAndOrderDetailId(currentCustomer.getCustomerId(), model.getOrderDetailId());
		if(entityInDb == null) throw new RecordNotFoundException("Specified id not found");

		entityInDb.setContent(entity.getContent());
		entityInDb.setPostDate(new Timestamp(System.currentTimeMillis()));
		entityInDb.setRating(entity.getRating());
		return orderDetailMapper.toModel(orderDetailRepository.save(entityInDb));
	}
}

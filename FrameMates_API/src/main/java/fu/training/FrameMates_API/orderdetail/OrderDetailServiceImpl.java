package fu.training.FrameMates_API.orderdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;

	public OrderDetail createOrderDetails(OrderDetail orderDetails){
		return orderDetailRepository.save(orderDetails);
	}
}

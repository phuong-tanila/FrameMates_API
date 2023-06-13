package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.OrderRepository;
import fu.training.FrameMates_API.services.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepository orderRepository;

}

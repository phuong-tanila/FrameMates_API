package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.OrderDetailRepository;
import fu.training.FrameMates_API.services.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailRepository orderDetailRepository;
}

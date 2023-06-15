package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/orders")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@GetMapping
	public String test(){
		return "123";
	}

}

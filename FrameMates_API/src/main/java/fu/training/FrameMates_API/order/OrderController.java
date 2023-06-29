package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.OrderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
	@PostMapping
	public ResponseEntity createOrder(@RequestBody  OrderModel orderModel){
		return new ResponseEntity(orderService.createOrder(orderModel), HttpStatus.CREATED);
	}

	@DeleteMapping("{id}")
	public ResponseEntity cancelOrder(@PathVariable int id){
		return null;
	}
}

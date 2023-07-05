package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.OrderService;
import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("api/orders")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@PostMapping
	public ResponseEntity createOrder(@RequestBody  OrderModel orderModel) throws MethodArgumentNotValidException, RecordNotFoundException {
		return new ResponseEntity(orderService.createOrder(orderModel), HttpStatus.CREATED);
	}
	@GetMapping("{id}")
	public ResponseEntity getOrderById(@PathVariable int id) throws RecordNotFoundException {
		return new ResponseEntity(orderService.getOrderById(id), HttpStatus.OK);
	}

	@GetMapping("/status")
	public ResponseEntity getOrdersByStatus(
			@RequestParam String status,
			@RequestParam(defaultValue = "16") int pageSize
			, @RequestParam(defaultValue = "0") int pageNo
			, @RequestParam(defaultValue = "") String[] sort

	) throws InvalidStatusStringException {
		Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
		return new ResponseEntity(orderService.getOrdersByStatus(status, pageable), HttpStatus.OK);
	}
	@PatchMapping("{id}")
	public ResponseEntity updateOrderStatus(
			@PathVariable int id,
			@RequestParam String status
	) throws RecordNotFoundException, InvalidStatusStringException {
		orderService.updateOrderStatus(id, status);
		return ResponseEntity.ok().build();
	}
}

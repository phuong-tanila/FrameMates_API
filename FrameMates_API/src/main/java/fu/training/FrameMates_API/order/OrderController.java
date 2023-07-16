package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.order.OrderService;
import fu.training.FrameMates_API.share.exceptions.InvalidStatusStringException;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
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

	@GetMapping("/current-customer")
	public ResponseEntity getOrdersByCurrentUserIncludeOrderDetails(
			Authentication authentication
	){
		return ResponseEntity.ok(orderService.getOrdersByCurrentUserIncludeOrderDetails(authentication));
	}
	@GetMapping("/status")
	public ResponseEntity getOrdersByStatus(
			@RequestParam String status,
			@RequestParam(defaultValue = "16") int pageSize
			, @RequestParam(defaultValue = "0") int pageNo
			, @RequestParam(defaultValue = "") String[] sort
			, Authentication authentication

	) throws InvalidStatusStringException {
		Pageable pageable = PaginationHelper.getPageable(pageNo, pageSize, sort);
		return new ResponseEntity(orderService.getOrdersByStatus(status, pageable, authentication), HttpStatus.OK);
	}
	@GetMapping("/user")
	public ResponseEntity getOrdersByUser(Authentication authentication){
		return new ResponseEntity(orderService.getOrderByUser(authentication), HttpStatus.OK);
	}
	@PatchMapping("{id}")
	public ResponseEntity updateOrderStatus(
			@PathVariable int id,
			@RequestParam String status
	) throws RecordNotFoundException, InvalidStatusStringException {
		orderService.updateOrderStatus(id, status);
		return ResponseEntity.ok().build();
	}

	@GetMapping("/feedback/current-studio")
	public ResponseEntity getFeedbackByCurrentStudio(
			Authentication authentication
	) throws Exception {
		if(authentication == null) throw new MissingBearerTokenException();
		var currentAccount = (Account) authentication.getPrincipal();
		var currentEmployee = currentAccount.getEmployee();
		if(currentEmployee == null || currentEmployee.getStudio() == null) throw new Exception("You must be a employee and owned a studio to do this function!");
		return new ResponseEntity<>(orderService.getFeedbackByStudioId(currentEmployee.getStudio().getStudioId()), HttpStatus.OK);
	}
}

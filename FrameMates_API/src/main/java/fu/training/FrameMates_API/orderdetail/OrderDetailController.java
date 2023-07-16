package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.orderdetail.OrderDetailService;
import fu.training.FrameMates_API.share.exceptions.MissingBearerTokenException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/order-details")
public class OrderDetailController {

	@Autowired
	private OrderDetailService orderDetailService;


	@GetMapping("/feedback/studio")
	public ResponseEntity getFeedbacksByStudioId(@RequestParam int studioId) {
		return new ResponseEntity<>(orderDetailService.getFeedbacksByStudioId(studioId), HttpStatus.OK);
	}

	@GetMapping("/feedback/service/{serviceId}")
	public ResponseEntity getFeedbacksByServiceId(@PathVariable int serviceId) {
		return new ResponseEntity<>(orderDetailService.getFeedbacksByStudioId(serviceId), HttpStatus.OK);
	}
	@GetMapping("/feedback/order/{orderId}")
	public ResponseEntity getFeedbacksByOrderId(@PathVariable int orderId) {
		return new ResponseEntity<>(orderDetailService.getFeedbacksByOrderId(orderId), HttpStatus.OK);
	}

	@PostMapping("/feedback/{orderDetailId}")
	public ResponseEntity createFeedback(
			@RequestBody OrderDetailModel model,
			Authentication authentication
	){
		return ResponseEntity.ok(orderDetailService.createFeedBack(model, authentication));
	}
//	@GetMapping("/feedback/current-studio")
//	public ResponseEntity getFeedbackByCurrentStudio(
//			Authentication authentication
//	) throws Exception {
//		if(authentication == null) throw new MissingBearerTokenException();
//		var currentAccount = (Account) authentication.getPrincipal();
//		var currentEmployee = currentAccount.getEmployee();
//		if(currentEmployee == null || currentEmployee.getStudio() == null) throw new Exception("You must be a employee and owned a studio to do this function!");
//		return new ResponseEntity<>(orderDetailService.getFeedbackByStudioId(currentEmployee.getStudio().getStudioId()), HttpStatus.OK);
//	}
}

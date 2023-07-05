package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.orderdetail.OrderDetailService;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/order-details")
public class OrderDetailController {

	@Autowired
	private OrderDetailService orderDetailService;


	@GetMapping("/feedback/studio")
	public ResponseEntity getFeedbackByStudioId(@RequestParam int studioId) {
		return new ResponseEntity<>(orderDetailService.getFeedbackByStudioId(studioId), HttpStatus.OK);
	}
}

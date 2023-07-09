package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("api/transactions")
public class TransactionController {

	@Autowired
	private TransactionService transactionService;
	@GetMapping("")
	public ResponseEntity getAll(){
		List<TransactionModel> result = transactionService.getAll();
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	@GetMapping("/{transactionId}")
	public ResponseEntity getById(@PathVariable int transactionId) throws RecordNotFoundException {
		var entity = transactionService.getById(transactionId);
		return new ResponseEntity<>(entity, HttpStatus.OK);
	}
}

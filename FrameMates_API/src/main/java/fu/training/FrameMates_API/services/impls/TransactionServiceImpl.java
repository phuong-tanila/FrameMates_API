package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.TransactionRepository;
import fu.training.FrameMates_API.services.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionRepository transactionRepository;

}

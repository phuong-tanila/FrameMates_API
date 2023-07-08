package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionMapper transactionMapper;
	@Autowired
	private TransactionRepository transactionRepository;

	@Override
	public List<TransactionModel> getAll() {
		List<Transaction> transactions = transactionRepository.findAll();
		List<TransactionModel> transactionModels = transactionMapper.toModels(transactions);
		return transactionModels;
	}

	@Override
	public TransactionModel getById(int transactionId) throws RecordNotFoundException {
		Transaction transaction = getTransactionById(transactionId);
		TransactionModel transactionModel = transactionMapper.toModel(transaction);
		return transactionModel;
	}

	@Override
	public Transaction getTransactionById(int transactionId) throws RecordNotFoundException {
		Optional<Transaction> otpTransaction = transactionRepository.findById(transactionId);
		if (otpTransaction.isEmpty()) throw new RecordNotFoundException("Transaction not found!");
		return otpTransaction.get();
	}
}

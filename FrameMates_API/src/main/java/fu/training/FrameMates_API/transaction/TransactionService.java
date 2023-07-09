package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

import java.util.List;

public interface TransactionService {
    List<TransactionModel> getAll();
    TransactionModel getById(int transactionId) throws RecordNotFoundException;
    Transaction getTransactionById(int transactionId) throws RecordNotFoundException;
}

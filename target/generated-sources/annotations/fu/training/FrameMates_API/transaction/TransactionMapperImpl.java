package fu.training.FrameMates_API.transaction;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class TransactionMapperImpl implements TransactionMapper {

    @Override
    public Transaction toEntity(TransactionModel model) {
        if ( model == null ) {
            return null;
        }

        Transaction transaction = new Transaction();

        return transaction;
    }

    @Override
    public TransactionModel toModel(Transaction entity) {
        if ( entity == null ) {
            return null;
        }

        TransactionModel transactionModel = new TransactionModel();

        return transactionModel;
    }
}

package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.transaction.Transaction;
import fu.training.FrameMates_API.transaction.TransactionModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TransactionMapper {

    Transaction toEntity (TransactionModel model);

    TransactionModel toModel (Transaction entity);
}

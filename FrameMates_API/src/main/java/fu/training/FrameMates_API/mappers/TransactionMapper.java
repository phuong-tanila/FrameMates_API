package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Transaction;
import fu.training.FrameMates_API.models.TransactionModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TransactionMapper {

    Transaction toEntity (TransactionModel model);

    TransactionModel toModel (Transaction entity);
}

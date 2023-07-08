package fu.training.FrameMates_API.transaction;

import fu.training.FrameMates_API.share.helpers.EnumConverter;
import org.mapstruct.*;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface TransactionMapper {
    @Named("statusEnumToString")
    default String statusEnumToString(Integer status) {
        return EnumConverter.convertEnumValueToString(status, TransactionStatus.class);
    }

    Transaction toEntity (TransactionModel model);

    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    TransactionModel toModel (Transaction entity);

    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    List<TransactionModel> toModels(List<Transaction> entities);
}

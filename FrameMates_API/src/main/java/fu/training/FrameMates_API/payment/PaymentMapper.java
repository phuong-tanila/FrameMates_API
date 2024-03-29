package fu.training.FrameMates_API.payment;

import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface PaymentMapper {

    Payment toEntity (PaymentModel model);

    PaymentModel toModel (Payment entity);
}

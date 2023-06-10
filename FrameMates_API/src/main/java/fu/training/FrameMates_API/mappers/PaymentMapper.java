package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Payment;
import fu.training.FrameMates_API.models.PaymentModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface PaymentMapper {

    Payment toEntity (PaymentModel model);

    PaymentModel toModel (Payment entity);
}

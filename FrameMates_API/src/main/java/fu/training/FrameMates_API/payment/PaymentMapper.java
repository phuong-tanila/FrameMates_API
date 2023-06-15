package fu.training.FrameMates_API.payment;

import fu.training.FrameMates_API.payment.Payment;
import fu.training.FrameMates_API.payment.PaymentModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface PaymentMapper {

    Payment toEntity (PaymentModel model);

    PaymentModel toModel (Payment entity);
}

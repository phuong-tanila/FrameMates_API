package fu.training.FrameMates_API.payment;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:45+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class PaymentMapperImpl implements PaymentMapper {

    @Override
    public Payment toEntity(PaymentModel model) {
        if ( model == null ) {
            return null;
        }

        Payment payment = new Payment();

        return payment;
    }

    @Override
    public PaymentModel toModel(Payment entity) {
        if ( entity == null ) {
            return null;
        }

        PaymentModel paymentModel = new PaymentModel();

        return paymentModel;
    }
}

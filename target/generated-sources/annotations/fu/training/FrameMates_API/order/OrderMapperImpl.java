package fu.training.FrameMates_API.order;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class OrderMapperImpl implements OrderMapper {

    @Override
    public Order toEntity(OrderModel model) {
        if ( model == null ) {
            return null;
        }

        Order order = new Order();

        return order;
    }

    @Override
    public OrderModel toModel(Order entity) {
        if ( entity == null ) {
            return null;
        }

        OrderModel orderModel = new OrderModel();

        return orderModel;
    }
}

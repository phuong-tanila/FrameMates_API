package fu.training.FrameMates_API.orderdetail;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class OrderDetailMapperImpl implements OrderDetailMapper {

    @Override
    public OrderDetail toEntity(OrderDetailModel model) {
        if ( model == null ) {
            return null;
        }

        OrderDetail orderDetail = new OrderDetail();

        return orderDetail;
    }

    @Override
    public OrderDetailModel toModel(OrderDetail entity) {
        if ( entity == null ) {
            return null;
        }

        OrderDetailModel orderDetailModel = new OrderDetailModel();

        return orderDetailModel;
    }
}

package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.order.OrderModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface OrderMapper {

    Order toEntity (OrderModel model);

    OrderModel toModel (Order entity);
}

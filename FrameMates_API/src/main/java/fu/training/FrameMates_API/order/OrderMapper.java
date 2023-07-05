package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.order.OrderModel;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderMapper {

    Order toEntity (OrderModel model);

    OrderModel toModel (Order entity);

    List<Order> toEntities (List<OrderModel> models);

    List<OrderModel> toModels (List<Order> entity);
}

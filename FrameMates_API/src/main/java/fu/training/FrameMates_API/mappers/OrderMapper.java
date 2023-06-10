package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Order;
import fu.training.FrameMates_API.models.OrderModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface OrderMapper {

    Order toEntity (OrderModel model);

    OrderModel toModel (Order entity);
}

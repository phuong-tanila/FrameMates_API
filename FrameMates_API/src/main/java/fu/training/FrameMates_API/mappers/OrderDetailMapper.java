package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.OrderDetail;
import fu.training.FrameMates_API.models.OrderDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface OrderDetailMapper {

    OrderDetail toEntity (OrderDetailModel model);

    OrderDetailModel toModel (OrderDetail entity);
}

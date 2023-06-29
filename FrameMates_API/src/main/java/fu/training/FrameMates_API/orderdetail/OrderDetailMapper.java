package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderDetailMapper {

    OrderDetail toEntity (OrderDetailModel model);

    OrderDetailModel toModel (OrderDetail entity);
}

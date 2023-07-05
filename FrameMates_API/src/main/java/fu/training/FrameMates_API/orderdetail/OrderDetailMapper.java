package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderDetailMapper {

    OrderDetail toEntity (OrderDetailModel model);

    OrderDetailModel toModel (OrderDetail entity);

    List<OrderDetail> toEntities (List<OrderDetailModel> models);

    List<OrderDetailModel> toModels (List<OrderDetail> entities);
}

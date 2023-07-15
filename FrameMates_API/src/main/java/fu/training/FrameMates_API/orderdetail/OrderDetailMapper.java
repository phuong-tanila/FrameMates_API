package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderDetailMapper {

    OrderDetail toEntity (OrderDetailModel model);
    @Mapping(source = "servicePack.studio.owner.studio", target = "servicePack.studio.owner.studio", ignore = true)
    @Mapping(source = "servicePack.updateBy.studio", target = "servicePack.updateBy.studio", ignore = true)
    @Mapping(source = "servicePack.createBy.studio", target = "servicePack.createBy.studio", ignore = true)
    @Mapping(source = "order.orderDetails", target = "order.orderDetails", ignore = true)
    OrderDetailModel toModel (OrderDetail entity);

    List<OrderDetail> toEntities (List<OrderDetailModel> models);

    List<OrderDetailModel> toModels (List<OrderDetail> entities);
}

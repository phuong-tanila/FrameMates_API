package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.order.OrderStatus;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.orderdetail.OrderDetailModel;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface OrderDetailMapper {

    OrderDetail toEntity (OrderDetailModel model);
    @Mapping(source = "servicePack.studio.owner.studio", target = "servicePack.studio.owner.studio", ignore = true)
    @Mapping(source = "servicePack.updateBy.studio", target = "servicePack.updateBy.studio", ignore = true)
    @Mapping(source = "servicePack.createBy.studio", target = "servicePack.createBy.studio", ignore = true)
    @Mapping(source = "order.orderDetails", target = "order.orderDetails", ignore = true)
    @Mapping(source = "order.status", target = "order.status", qualifiedByName = "statusEnumToString")
    OrderDetailModel toModel (OrderDetail entity);

    List<OrderDetail> toEntities (List<OrderDetailModel> models);

    List<OrderDetailModel> toModels (List<OrderDetail> entities);

    @Named("statusEnumToString")
    default String statusEnumToString(int status) {
        return EnumConverter.convertEnumValueToString(status, OrderStatus.class);
    }
}

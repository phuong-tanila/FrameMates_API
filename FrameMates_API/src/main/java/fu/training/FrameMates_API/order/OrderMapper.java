package fu.training.FrameMates_API.order;

import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.order.OrderModel;
import fu.training.FrameMates_API.servicepack.ServiceStatus;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface OrderMapper {

    Order toEntity (OrderModel model);

    List<Order> toEntities (List<OrderModel> models);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    @Mapping(source = "orderDetails", target = "orderDetails", ignore = true)
    @Mapping(source = "customer.account", target = "customer.accountModel")
    @Mapping(source = "customer.account.customer", target = "customer.accountModel.customer", ignore = true)
    @Mapping(source = "customer.account.password", target = "customer.accountModel.password", ignore = true)
    OrderModel toModel (Order entity);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    @Mapping(source = "orderDetails", target = "orderDetails", ignore = true)
    @Mapping(source = "customer.account", target = "customer.accountModel")
    @Mapping(source = "customer.account.password", target = "customer.accountModel.password", ignore = true)
    @Mapping(source = "customer.account.customer", target = "customer.accountModel.customer", ignore = true)


    List<OrderModel> toModels (List<Order> entity);

    @Named("statusEnumToString")
    default String statusEnumToString(int status) {
        return EnumConverter.convertEnumValueToString(status, OrderStatus.class);
    }
}

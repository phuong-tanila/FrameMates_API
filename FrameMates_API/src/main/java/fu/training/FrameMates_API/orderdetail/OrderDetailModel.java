package fu.training.FrameMates_API.orderdetail;

import fu.training.FrameMates_API.attachment.Attachment;
import fu.training.FrameMates_API.order.Order;
import fu.training.FrameMates_API.order.OrderModel;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
public class OrderDetailModel {

    private Integer orderDetailId;

    private Integer price;

    private Integer discount;

    private Integer rating;

    private String content;

    private java.sql.Timestamp postDate;

    private ServicePackModel servicePack;

    private OrderModel order;

}

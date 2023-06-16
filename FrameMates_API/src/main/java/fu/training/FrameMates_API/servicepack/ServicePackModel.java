package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.favorite.Favorite;
import fu.training.FrameMates_API.mediaservice.MediaService;
import fu.training.FrameMates_API.orderdetail.OrderDetail;
import fu.training.FrameMates_API.studio.Studio;
import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.ToString;

import java.util.Set;

@Data
@ToString
public class ServicePackModel {

    private int serviceId;
    @NotBlank(message = "service name is not specified")
    private String name;

    private java.sql.Timestamp createDate;
    @NotNull(message = "service price is not specified")
    @Min(0)
    private Integer price;
    @NotBlank(message = "service description is not specified")
    private String description;

    private Integer soldCount = 0;

    private Integer status;

    private java.sql.Timestamp updateDate;

    private Integer view;

    private Integer discount;

    private Double rating;

    private Employee updateBy;

    private Employee createBy;

    private Studio studio;

    private Set<MediaService> servicePack_mediaService;

    private Set<OrderDetail> servicePack_orderDetail;

    private Set<Favorite> servicePack_favorite;
}

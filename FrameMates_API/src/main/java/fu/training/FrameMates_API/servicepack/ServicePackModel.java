package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.employee.EmployeeModel;
import fu.training.FrameMates_API.mediaservice.MediaServiceModel;
import fu.training.FrameMates_API.studio.StudioModel;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.ToString;

import java.sql.Timestamp;
import java.util.Set;

@Data
@ToString
public class ServicePackModel {

    private int serviceId;
    @NotBlank(message = "service name is not specified")

    private String name;

    private Timestamp createDate;

    @NotNull(message = "service price is not specified")
    @Min(0)
    private Integer price;

    @NotBlank(message = "service description is not specified")
    private String description;

    private Integer soldCount = 0;

    private String status;

    private Timestamp updateDate;

    private Integer view;

    private Integer discount;

    private Double rating;

    private EmployeeModel updateBy;

    private EmployeeModel createBy;

    private StudioModel studio;

    private Set<MediaServiceModel> servicePack_mediaService;


//
//    private Set<OrderDetailModel> servicePack_orderDetail;
//
//    private Set<FavoriteModel> servicePack_favorite;
}

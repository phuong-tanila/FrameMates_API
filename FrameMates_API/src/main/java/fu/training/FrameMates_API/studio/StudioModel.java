package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudioModel {
    private String name;
    private String address;
    private String description;
    private Integer status;
    private Double totalRating;
    private Integer balance;
    private Timestamp createDate;
    private String avatarStudio;
    private String coverImage;

}

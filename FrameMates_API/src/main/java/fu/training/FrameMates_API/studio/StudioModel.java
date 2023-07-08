package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.employee.EmployeeModel;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudioModel {
    private Integer studioId;
    @Size(min=1, max=500)
    private String name;
    @Size(min=1, max=500)
    private String address;
    @Size(min=1, max=500)
    private String description;
    private Integer status;
    private Double totalRating;
    private Integer balance;
    private Timestamp createDate;
    @Size(min=1, max=500)
    private String avatarStudio;
    @Size(min=1, max=500)
    private String coverImage;
    private EmployeeModel owner;


}

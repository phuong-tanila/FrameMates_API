package fu.training.FrameMates_API.studio;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class StudioModel {
    private String name;
    private String address;
    private String description;
    private Integer status;
    private Integer totalRating;
    private Integer balance;
    private Timestamp createDate;
    private String avatarStudio;
    private String coverImage;
}

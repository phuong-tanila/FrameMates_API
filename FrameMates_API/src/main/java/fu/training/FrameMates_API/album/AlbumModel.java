package fu.training.FrameMates_API.album;

import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.mediafile.MediaFileModel;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import jakarta.persistence.*;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.Set;

@Data
public class AlbumModel {

    private Integer albumId;

    @NotBlank
    @Size(max = 500)
    private String title;

    private java.sql.Timestamp createDate;

    private Integer view = 0;

    private CustomerModel customer;

    private StudioModel studio;

    private Set<MediaFileModel> album_mediaFile;

}

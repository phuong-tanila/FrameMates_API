package fu.training.FrameMates_API.mediafile;

import fu.training.FrameMates_API.album.Album;
import fu.training.FrameMates_API.album.AlbumModel;
import fu.training.FrameMates_API.comment.Comment;
import fu.training.FrameMates_API.customer.Customer;
import fu.training.FrameMates_API.customer.CustomerModel;
import fu.training.FrameMates_API.reaction.Reaction;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import fu.training.FrameMates_API.tagdetail.TagDetail;
import jakarta.persistence.*;
import lombok.Data;

import java.util.Set;

@Data
public class MediaFileModel {

    private Integer fileId;

    private String filePath;

    private String title;

    private String description;

    private java.sql.Timestamp uploadDate;

    private Integer view;


//    private CustomerModel customer;
//
//    private StudioModel studio;


}

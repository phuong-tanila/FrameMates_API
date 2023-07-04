package fu.training.FrameMates_API.mediaservice;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
public class MediaServiceModel {

    private Integer fileId;

    private String filePath;

    private Integer fileIndex;
}

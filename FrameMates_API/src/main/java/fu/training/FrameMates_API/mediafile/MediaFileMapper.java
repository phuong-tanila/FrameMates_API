package fu.training.FrameMates_API.mediafile;

import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.mediafile.MediaFileModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MediaFileMapper {

    MediaFile toEntity (MediaFileModel model);

    MediaFileModel toModel (MediaFile entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.MediaFile;
import fu.training.FrameMates_API.models.MediaFileModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MediaFileMapper {

    MediaFile toEntity (MediaFileModel model);

    MediaFileModel toModel (MediaFile entity);
}

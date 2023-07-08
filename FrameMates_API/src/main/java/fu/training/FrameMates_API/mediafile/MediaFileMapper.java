package fu.training.FrameMates_API.mediafile;

import fu.training.FrameMates_API.mediafile.MediaFile;
import fu.training.FrameMates_API.mediafile.MediaFileModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface MediaFileMapper {
    MediaFile toEntity (MediaFileModel model);
    MediaFileModel toModel (MediaFile entity);
    List<MediaFile> toEntities (List<MediaFileModel> models);
    List<MediaFileModel> toModels (List<MediaFile> entities);
}

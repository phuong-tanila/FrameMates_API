package fu.training.FrameMates_API.mediaservice;

import fu.training.FrameMates_API.mediaservice.MediaService;
import fu.training.FrameMates_API.mediaservice.MediaServiceModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MediaServiceMapper {

    MediaService toEntity (MediaServiceModel model);

    MediaServiceModel toModel (MediaService entity);
}

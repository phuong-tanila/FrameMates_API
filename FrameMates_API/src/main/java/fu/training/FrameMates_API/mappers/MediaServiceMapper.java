package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.MediaService;
import fu.training.FrameMates_API.models.MediaServiceModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MediaServiceMapper {

    MediaService toEntity (MediaServiceModel model);

    MediaServiceModel toModel (MediaService entity);
}

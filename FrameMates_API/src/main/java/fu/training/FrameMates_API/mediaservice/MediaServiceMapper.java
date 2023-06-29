package fu.training.FrameMates_API.mediaservice;

import fu.training.FrameMates_API.mediaservice.MediaService;
import fu.training.FrameMates_API.mediaservice.MediaServiceModel;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;
import java.util.Set;

@Mapper(componentModel = "spring")
public interface MediaServiceMapper {

    MediaService toEntity (MediaServiceModel model);

    MediaServiceModel toModel (MediaService entity);

    Set<MediaService> toEntities(Set<MediaServiceModel> models);
    Set<MediaServiceModel> toModels(Set<MediaService> entites);
}

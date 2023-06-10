package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Studio;
import fu.training.FrameMates_API.models.StudioModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface StudioMapper {

    Studio toEntity (StudioModel model);

    StudioModel toModel (Studio entity);
}

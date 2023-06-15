package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface StudioMapper {

    Studio toEntity (StudioModel model);

    StudioModel toModel (Studio entity);
}

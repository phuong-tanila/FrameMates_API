package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface StudioMapper {
    Studio toEntity (StudioModel model);
    StudioModel toModel (Studio entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Tag;
import fu.training.FrameMates_API.models.TagModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TagMapper {

    Tag toEntity (TagModel model);

    TagModel toModel (Tag entity);
}

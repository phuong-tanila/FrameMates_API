package fu.training.FrameMates_API.tag;

import fu.training.FrameMates_API.tag.Tag;
import fu.training.FrameMates_API.tag.TagModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TagMapper {

    Tag toEntity (TagModel model);

    TagModel toModel (Tag entity);
}

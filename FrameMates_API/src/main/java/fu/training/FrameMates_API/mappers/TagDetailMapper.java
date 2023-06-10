package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.TagDetail;
import fu.training.FrameMates_API.models.TagDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TagDetailMapper {

    TagDetail toEntity (TagDetailModel model);

    TagDetailModel toModel (TagDetail entity);
}

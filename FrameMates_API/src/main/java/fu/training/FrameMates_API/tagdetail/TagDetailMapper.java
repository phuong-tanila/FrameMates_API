package fu.training.FrameMates_API.tagdetail;

import fu.training.FrameMates_API.tagdetail.TagDetail;
import fu.training.FrameMates_API.tagdetail.TagDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TagDetailMapper {

    TagDetail toEntity (TagDetailModel model);

    TagDetailModel toModel (TagDetail entity);
}

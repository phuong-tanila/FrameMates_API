package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Attachment;
import fu.training.FrameMates_API.models.AttachmentModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AttachmentMapper {

    Attachment toEntity (AttachmentModel model);

    AttachmentModel toModel (Attachment entity);
}

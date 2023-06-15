package fu.training.FrameMates_API.attachment;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AttachmentMapper {

    Attachment toEntity (AttachmentModel model);

    AttachmentModel toModel (Attachment entity);
}

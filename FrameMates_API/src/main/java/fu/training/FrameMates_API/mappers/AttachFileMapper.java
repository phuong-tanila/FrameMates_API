package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.AttachFile;
import fu.training.FrameMates_API.models.AttachFileModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AttachFileMapper {

    AttachFile toEntity (AttachFileModel model);

    AttachFileModel toModel (AttachFile entity);
}

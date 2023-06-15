package fu.training.FrameMates_API.attachfile;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AttachFileMapper {

    AttachFile toEntity (AttachFileModel model);

    AttachFileModel toModel (AttachFile entity);
}

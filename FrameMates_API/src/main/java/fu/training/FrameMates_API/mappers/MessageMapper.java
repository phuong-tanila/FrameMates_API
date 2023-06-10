package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Message;
import fu.training.FrameMates_API.models.MessageModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MessageMapper {

    Message toEntity (MessageModel model);

    MessageModel toModel (Message entity);
}

package fu.training.FrameMates_API.message;

import fu.training.FrameMates_API.message.Message;
import fu.training.FrameMates_API.message.MessageModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface MessageMapper {

    Message toEntity (MessageModel model);

    MessageModel toModel (Message entity);
}

package fu.training.FrameMates_API.message;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class MessageMapperImpl implements MessageMapper {

    @Override
    public Message toEntity(MessageModel model) {
        if ( model == null ) {
            return null;
        }

        Message message = new Message();

        return message;
    }

    @Override
    public MessageModel toModel(Message entity) {
        if ( entity == null ) {
            return null;
        }

        MessageModel messageModel = new MessageModel();

        return messageModel;
    }
}

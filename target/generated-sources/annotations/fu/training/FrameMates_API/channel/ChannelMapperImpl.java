package fu.training.FrameMates_API.channel;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class ChannelMapperImpl implements ChannelMapper {

    @Override
    public Channel toEntity(ChannelModel model) {
        if ( model == null ) {
            return null;
        }

        Channel channel = new Channel();

        return channel;
    }

    @Override
    public ChannelModel toModel(Channel entity) {
        if ( entity == null ) {
            return null;
        }

        ChannelModel channelModel = new ChannelModel();

        return channelModel;
    }
}

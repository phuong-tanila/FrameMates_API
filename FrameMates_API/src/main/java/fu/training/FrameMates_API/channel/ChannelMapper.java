package fu.training.FrameMates_API.channel;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ChannelMapper {

    Channel toEntity (ChannelModel model);

    ChannelModel toModel (Channel entity);
}

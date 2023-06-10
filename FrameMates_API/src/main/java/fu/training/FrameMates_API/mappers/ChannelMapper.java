package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Channel;
import fu.training.FrameMates_API.models.ChannelModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ChannelMapper {

    Channel toEntity (ChannelModel model);

    ChannelModel toModel (Channel entity);
}

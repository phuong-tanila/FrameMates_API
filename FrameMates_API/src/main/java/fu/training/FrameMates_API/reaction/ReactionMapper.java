package fu.training.FrameMates_API.reaction;

import fu.training.FrameMates_API.reaction.Reaction;
import fu.training.FrameMates_API.reaction.ReactionModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ReactionMapper {

    Reaction toEntity (ReactionModel model);

    ReactionModel toModel (Reaction entity);
}

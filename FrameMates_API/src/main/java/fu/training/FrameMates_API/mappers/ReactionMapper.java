package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Reaction;
import fu.training.FrameMates_API.models.ReactionModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ReactionMapper {

    Reaction toEntity (ReactionModel model);

    ReactionModel toModel (Reaction entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Comment;
import fu.training.FrameMates_API.models.CommentModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CommentMapper {

    Comment toEntity (CommentModel model);

    CommentModel toModel (Comment entity);
}

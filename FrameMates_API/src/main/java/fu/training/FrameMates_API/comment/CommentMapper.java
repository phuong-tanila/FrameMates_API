package fu.training.FrameMates_API.comment;

import fu.training.FrameMates_API.comment.Comment;
import fu.training.FrameMates_API.comment.CommentModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface CommentMapper {

    Comment toEntity (CommentModel model);

    CommentModel toModel (Comment entity);
}

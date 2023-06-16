package fu.training.FrameMates_API.reaction;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class ReactionMapperImpl implements ReactionMapper {

    @Override
    public Reaction toEntity(ReactionModel model) {
        if ( model == null ) {
            return null;
        }

        Reaction reaction = new Reaction();

        return reaction;
    }

    @Override
    public ReactionModel toModel(Reaction entity) {
        if ( entity == null ) {
            return null;
        }

        ReactionModel reactionModel = new ReactionModel();

        return reactionModel;
    }
}

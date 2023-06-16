package fu.training.FrameMates_API.tag;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class TagMapperImpl implements TagMapper {

    @Override
    public Tag toEntity(TagModel model) {
        if ( model == null ) {
            return null;
        }

        Tag tag = new Tag();

        return tag;
    }

    @Override
    public TagModel toModel(Tag entity) {
        if ( entity == null ) {
            return null;
        }

        TagModel tagModel = new TagModel();

        return tagModel;
    }
}

package fu.training.FrameMates_API.tagdetail;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class TagDetailMapperImpl implements TagDetailMapper {

    @Override
    public TagDetail toEntity(TagDetailModel model) {
        if ( model == null ) {
            return null;
        }

        TagDetail tagDetail = new TagDetail();

        return tagDetail;
    }

    @Override
    public TagDetailModel toModel(TagDetail entity) {
        if ( entity == null ) {
            return null;
        }

        TagDetailModel tagDetailModel = new TagDetailModel();

        return tagDetailModel;
    }
}

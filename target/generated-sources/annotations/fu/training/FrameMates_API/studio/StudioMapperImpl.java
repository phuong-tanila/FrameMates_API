package fu.training.FrameMates_API.studio;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class StudioMapperImpl implements StudioMapper {

    @Override
    public Studio toEntity(StudioModel model) {
        if ( model == null ) {
            return null;
        }

        Studio studio = new Studio();

        return studio;
    }

    @Override
    public StudioModel toModel(Studio entity) {
        if ( entity == null ) {
            return null;
        }

        StudioModel studioModel = new StudioModel();

        return studioModel;
    }
}

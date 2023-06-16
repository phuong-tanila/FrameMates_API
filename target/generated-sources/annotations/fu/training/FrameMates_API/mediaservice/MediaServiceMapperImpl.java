package fu.training.FrameMates_API.mediaservice;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class MediaServiceMapperImpl implements MediaServiceMapper {

    @Override
    public MediaService toEntity(MediaServiceModel model) {
        if ( model == null ) {
            return null;
        }

        MediaService mediaService = new MediaService();

        return mediaService;
    }

    @Override
    public MediaServiceModel toModel(MediaService entity) {
        if ( entity == null ) {
            return null;
        }

        MediaServiceModel mediaServiceModel = new MediaServiceModel();

        return mediaServiceModel;
    }
}

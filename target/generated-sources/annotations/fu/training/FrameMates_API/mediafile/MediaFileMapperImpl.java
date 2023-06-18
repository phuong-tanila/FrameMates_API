package fu.training.FrameMates_API.mediafile;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class MediaFileMapperImpl implements MediaFileMapper {

    @Override
    public MediaFile toEntity(MediaFileModel model) {
        if ( model == null ) {
            return null;
        }

        MediaFile mediaFile = new MediaFile();

        return mediaFile;
    }

    @Override
    public MediaFileModel toModel(MediaFile entity) {
        if ( entity == null ) {
            return null;
        }

        MediaFileModel mediaFileModel = new MediaFileModel();

        return mediaFileModel;
    }
}

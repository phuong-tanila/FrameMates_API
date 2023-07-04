package fu.training.FrameMates_API.album;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:45+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class AlbumMapperImpl implements AlbumMapper {

    @Override
    public Album toEntity(AlbumModel model) {
        if ( model == null ) {
            return null;
        }

        Album album = new Album();

        return album;
    }

    @Override
    public AlbumModel toModel(Album entity) {
        if ( entity == null ) {
            return null;
        }

        AlbumModel albumModel = new AlbumModel();

        return albumModel;
    }
}

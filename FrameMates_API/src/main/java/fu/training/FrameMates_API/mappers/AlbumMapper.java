package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Album;
import fu.training.FrameMates_API.models.AlbumModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AlbumMapper{

    Album toEntity (AlbumModel model);

    AlbumModel toModel (Album entity);
}

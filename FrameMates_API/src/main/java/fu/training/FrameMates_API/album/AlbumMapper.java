package fu.training.FrameMates_API.album;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AlbumMapper{

    Album toEntity (AlbumModel model);

    AlbumModel toModel (Album entity);
}

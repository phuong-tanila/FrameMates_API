package fu.training.FrameMates_API.album;

import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface AlbumMapper{

    Album toEntity (AlbumModel model);

    AlbumModel toModel (Album entity);
}

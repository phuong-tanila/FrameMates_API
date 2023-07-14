package fu.training.FrameMates_API.album;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface AlbumMapper{

    Album toEntity (AlbumModel model);
    @Mapping(source = "studio", target = "studio", ignore = true)
    AlbumModel toModel (Album entity);

    @Mapping(source = "studio", target = "studio", ignore = true)
    List<AlbumModel> toModels (List<Album> entity);
}

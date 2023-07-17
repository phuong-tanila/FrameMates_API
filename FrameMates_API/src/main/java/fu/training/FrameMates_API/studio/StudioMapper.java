package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioModel;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface StudioMapper {
    Studio toEntity (StudioModel model);
    @Mapping(target = "owner.studio", source = "owner.studio", ignore = true)
    @Mapping(target = "owner.accountModel", source = "owner.account")
    @Mapping(target = "owner.accountModel.employee", source = "owner.account.employee", ignore = true)
    @Mapping(target = "owner.accountModel.password", source = "owner.account.password", ignore = true)
    StudioModel toModel (Studio entity);

    @Mapping(target = "owner.studio", source = "owner.studio", ignore = true)
    @Mapping(target = "owner.accountModel", source = "owner.account")
    @Mapping(target = "owner.accountModel.employee", source = "owner.account.employee", ignore = true)
    @Mapping(target = "owner.accountModel.password", source = "owner.account.password", ignore = true)
    List<StudioModel> toModels (List<Studio> entities);
}

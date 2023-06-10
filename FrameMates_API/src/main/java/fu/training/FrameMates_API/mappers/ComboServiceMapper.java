package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.ComboService;
import fu.training.FrameMates_API.models.ComboServiceModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ComboServiceMapper {

    ComboService toEntity (ComboServiceModel model);

    ComboServiceModel toModel (ComboService entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.ComboDetail;
import fu.training.FrameMates_API.models.ComboDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ComboDetailMapper {

    ComboDetail toEntity (ComboDetailModel model);

    ComboDetailModel toModel (ComboDetail entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Administrator;
import fu.training.FrameMates_API.models.AdministratorModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AdministratorMapper {

    Administrator toEntity (AdministratorModel model);

    AdministratorModel toModel (Administrator entity);

}

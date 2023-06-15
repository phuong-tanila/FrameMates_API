package fu.training.FrameMates_API.administrator;

import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface AdministratorMapper {

    Administrator toEntity (AdministratorModel model);

    AdministratorModel toModel (Administrator entity);

}

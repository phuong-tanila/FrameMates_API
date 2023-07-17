package fu.training.FrameMates_API.administrator;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface AdministratorMapper {

    Administrator toEntity (AdministratorModel model);
    @Mapping(source = "account.administrator", target = "accountModel.administrator", ignore = true)
    @Mapping(source = "account.password", target = "accountModel.password", ignore = true)
    AdministratorModel toModel (Administrator entity);

}

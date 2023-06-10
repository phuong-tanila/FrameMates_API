package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.ServicePack;
import fu.training.FrameMates_API.models.ServicePackModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ServicePackMapper {

    ServicePack toEntity (ServicePackModel model);

    ServicePackModel toModel (ServicePack entity);
}

package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface ServicePackMapper {

    ServicePack toEntity (ServicePackModel model);

    ServicePackModel toModel (ServicePack entity);
}

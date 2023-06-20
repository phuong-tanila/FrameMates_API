package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import org.mapstruct.BeanMapping;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface ServicePackMapper {

    ServicePack toEntity (ServicePackModel model);

    ServicePackModel toModel (ServicePack entity);

    List<ServicePack> toEntities(List<ServicePackModel> models);
    List<ServicePackModel> toModels(List<ServicePack> entites);
}

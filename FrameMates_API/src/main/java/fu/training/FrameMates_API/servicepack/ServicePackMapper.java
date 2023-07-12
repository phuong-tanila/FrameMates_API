package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.servicepack.ServicePackModel;
import fu.training.FrameMates_API.share.helpers.EnumConverter;
import org.mapstruct.*;

import java.util.List;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface ServicePackMapper {

    @Mapping(source = "studio.owner.studio", target = "studio.owner.studio", ignore = true)
//    @Mapping(source = "status", target = "status", qualifiedByName = "statusStringToEnum")
    ServicePack toEntity (ServicePackModel model);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    @Mapping(source = "studio.owner.studio", target = "studio.owner.studio", ignore = true)
    
    ServicePackModel toModel (ServicePack entity);
    @Named("statusEnumToString")
    default String statusEnumToString(int status) {
        return EnumConverter.convertEnumValueToString(status, ServiceStatus.class);
    }

    List<ServicePack> toEntities(List<ServicePackModel> models);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    List<ServicePackModel> toModels(List<ServicePack> entites);
}

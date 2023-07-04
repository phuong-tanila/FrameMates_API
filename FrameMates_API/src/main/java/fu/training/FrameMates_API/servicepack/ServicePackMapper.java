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

//    @Mapping(source = "employee", target = "employee")
//    @Mapping(source = "status", target = "status", qualifiedByName = "statusStringToEnum")
    ServicePack toEntity (ServicePackModel model);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    ServicePackModel toModel (ServicePack entity);
    @Named("statusEnumToString")
    default String statusEnumToString(int status) {
        return EnumConverter.convertEnumValueToString(status, ServiceStatus.class);
    }

    List<ServicePack> toEntities(List<ServicePackModel> models);
    @Mapping(source = "status", target = "status", qualifiedByName = "statusEnumToString")
    List<ServicePackModel> toModels(List<ServicePack> entites);
}

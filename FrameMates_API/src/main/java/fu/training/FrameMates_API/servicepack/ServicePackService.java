package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;

import java.util.List;

public interface ServicePackService {
    List<ServicePack> getAll();

    ServicePackModel createService(ServicePackModel servicePackModel);
    ServicePackModel updateService(ServicePackModel servicePackModel);
}

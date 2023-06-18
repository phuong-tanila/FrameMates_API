package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

import java.util.List;

public interface ServicePackService {
    List<ServicePack> getAll();

    ServicePackModel getById(int serviceId) throws RecordNotFoundException;
    ServicePackModel createService(ServicePackModel servicePackModel);
    ServicePackModel updateService(ServicePackModel servicePackModel) throws RecordNotFoundException;

    void deleteService(Integer serviceId) throws RecordNotFoundException;
}

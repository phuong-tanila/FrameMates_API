package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.servicepack.ServicePack;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface ServicePackService {
    List<ServicePackModel> getAll();
    Page<ServicePackModel> getAll(Pageable pageable);
    Page<ServicePackModel> getByName(String name, Pageable pageable);
    ServicePackModel getById(int serviceId) throws RecordNotFoundException;
    ServicePackModel createService(ServicePackModel servicePackModel);
    ServicePackModel updateService(ServicePackModel servicePackModel, Employee employee) throws RecordNotFoundException;
//    void deleteService(Integer serviceId) throws RecordNotFoundException;

    void deleteService(Integer serviceId, Employee employee) throws RecordNotFoundException;
}

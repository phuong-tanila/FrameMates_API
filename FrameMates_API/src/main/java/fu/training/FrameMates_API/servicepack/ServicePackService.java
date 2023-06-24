package fu.training.FrameMates_API.servicepack;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Optional;

public interface ServicePackService {
    List<ServicePack> getAll();
    Page<ServicePack> getAll(Pageable pageable);

    ServicePack findById(int id) throws RecordNotFoundException;
}

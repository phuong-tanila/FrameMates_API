package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.share.helpers.PaginationResponse;
import fu.training.FrameMates_API.studio.Studio;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;

import java.util.ArrayList;
import java.util.List;

public interface StudioService {
    long count();

    void updateStudioStatus(int id, int status, Authentication authentication) throws IllegalAccessException;
    StudioModel createStudio(StudioModel studioModel, Employee employee);
    StudioModel getById(Integer id);
    List<StudioModel> getByName(String name);
    StudioModel update(Integer id, StudioModel studioModel);

    PaginationResponse<StudioModel> searchByStatus(int status, String searchKey, Pageable pageable);
    StudioModel findByCurrentOwner(Authentication authentication);

}

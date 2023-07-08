package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.employee.Employee;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.studio.Studio;

import java.util.ArrayList;
import java.util.List;

public interface StudioService {
    long count();

    StudioModel createStudio(StudioModel studioModel, Employee employee);
    StudioModel getById(Integer id);
    List<StudioModel> getByName(String name);
    StudioModel update(Integer id, StudioModel studioModel);
}

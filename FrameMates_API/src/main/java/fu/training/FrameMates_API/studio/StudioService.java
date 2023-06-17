package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.studio.Studio;

import java.util.ArrayList;
import java.util.List;

public interface StudioService {
    long count();

    StudioModel createStudio(StudioModel studioModel);

    StudioModel getById(Integer id);
    StudioModel updateStatus(Integer id, Integer status);
    List<StudioModel> getByName(String name);
}

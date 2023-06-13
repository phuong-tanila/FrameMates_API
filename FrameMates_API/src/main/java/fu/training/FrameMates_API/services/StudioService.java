package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.entities.Studio;

public interface StudioService {
    long count();

    Studio createStudio(Studio studio);
}

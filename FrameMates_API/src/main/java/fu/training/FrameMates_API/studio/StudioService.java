package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.studio.Studio;

public interface StudioService {
    long count();

    Studio createStudio(Studio studio);
}

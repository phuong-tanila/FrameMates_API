package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.entities.Studio;
import fu.training.FrameMates_API.repositories.StudioRepository;
import fu.training.FrameMates_API.services.StudioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudioServiceImpl implements StudioService {

	@Autowired
	private StudioRepository studioRepository;

	@Override
	public long count() {
		return studioRepository.count();
	}

	@Override
	public Studio createStudio(Studio studio) {
		return studioRepository.save(studio);
	}
}

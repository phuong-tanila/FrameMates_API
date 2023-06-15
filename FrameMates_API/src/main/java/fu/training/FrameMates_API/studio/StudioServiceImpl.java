package fu.training.FrameMates_API.studio;

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

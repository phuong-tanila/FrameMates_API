package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class StudioServiceImpl implements StudioService {
	@Autowired
	private StudioMapper studioMapper;
	@Autowired
	private StudioRepository studioRepository;
	private Studio getStudio(Integer id) {
		Studio studio = null;
		Optional optionalStudio = studioRepository.findById(id);
		if (optionalStudio.isPresent()) {
			studio = (Studio) optionalStudio.get();
		}
		return studio;
	}

	@Override
	public long count() {
		return studioRepository.count();
	}

	@Override
	public Studio createStudio(Studio studio) {
		return studioRepository.save(studio);
	}

	@Override
	public StudioModel getById(Integer id) {
		return studioMapper.toModel(getStudio(id));
	}

	@Override
	public StudioModel updateStatus(Integer id, Integer status) {
		Studio studio = getStudio(id);
		if (studio == null) {
			return null;
		}
		studio.setStatus(status);
		return studioMapper.toModel(studio);
	}
}

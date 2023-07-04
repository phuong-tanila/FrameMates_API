package fu.training.FrameMates_API.studio;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
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
	public StudioModel createStudio(StudioModel studioModel) {
		return studioMapper.toModel(studioRepository.save(studioMapper.toEntity(studioModel)));
	}

	@Override
	public StudioModel getById(Integer id) {
		return studioMapper.toModel(getStudio(id));
	}

	@Override
	public List<StudioModel> getByName(String name) {
		List<StudioModel> studioModels = new ArrayList<>();
		List<Studio> studios = studioRepository.findAllByNameContains(name);
		studios.forEach(studio -> studioModels.add(studioMapper.toModel(studio)));
		return studioModels;
	}

	@Override
	public StudioModel update(Integer id, StudioModel studioModel) {
		Studio studio = getStudio(id);
		if (studio == null) {
			throw new RecordNotFoundException("Studio not found!");
		}
		studio.setName(studioModel.getName());
		studio.setAddress(studioModel.getAddress());
		studio.setDescription(studioModel.getDescription());
		studio.setStatus(studioModel.getStatus());
		studio.setTotalRating(studioModel.getTotalRating());
		studio.setBalance(studio.getBalance());
		studio.setAvatarStudio(studioModel.getAvatarStudio());
		studio.setCoverImage(studioModel.getCoverImage());
		return studioMapper.toModel(studioRepository.save(studio));
	}
}

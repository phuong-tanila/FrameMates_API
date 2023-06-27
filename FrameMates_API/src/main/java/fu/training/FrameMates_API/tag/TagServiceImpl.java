package fu.training.FrameMates_API.tag;

import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TagServiceImpl implements TagService {

	@Autowired
	private TagRepository tagRepository;

	@Override
	public long countTag() {
		return tagRepository.count();
	}

	@Override
	public Tag createTag(Tag tag) {
		return tagRepository.save(tag);
	}

	@Override
	public List<Tag> createTags(List<Tag> tags) {
		return tagRepository.saveAll(tags);
	}

	@Override
	public List<Tag> getAll() {
		return tagRepository.findAll();
	}

	@Override
	public Tag getById(int id) throws RecordNotFoundException {
		Optional<Tag> optionalTag = tagRepository.findById(id);
		if(optionalTag.isEmpty()) throw new RecordNotFoundException("Tag id not found!!");
		return optionalTag.get();
	}
}

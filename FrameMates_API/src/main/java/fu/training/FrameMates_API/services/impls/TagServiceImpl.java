package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.TagRepository;
import fu.training.FrameMates_API.services.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagServiceImpl implements TagService {

	@Autowired
	private TagRepository tagRepository;

}

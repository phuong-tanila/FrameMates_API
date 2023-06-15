package fu.training.FrameMates_API.tag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagServiceImpl implements TagService {

	@Autowired
	private TagRepository tagRepository;

}

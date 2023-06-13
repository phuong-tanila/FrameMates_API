package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.TagDetailRepository;
import fu.training.FrameMates_API.services.TagDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagDetailServiceImpl implements TagDetailService {

	@Autowired
	private TagDetailRepository tagDetailRepository;

}

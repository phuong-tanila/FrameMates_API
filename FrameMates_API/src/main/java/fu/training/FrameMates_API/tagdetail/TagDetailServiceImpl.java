package fu.training.FrameMates_API.tagdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagDetailServiceImpl implements TagDetailService {

	@Autowired
	private TagDetailRepository tagDetailRepository;

}

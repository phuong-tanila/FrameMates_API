package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.TagDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagDetailService {

	@Autowired
	private TagDetailRepository tagDetailRepository;

}

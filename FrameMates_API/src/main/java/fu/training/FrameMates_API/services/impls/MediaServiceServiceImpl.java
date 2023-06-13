package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.MediaFileRepository;
import fu.training.FrameMates_API.services.MediaServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaServiceServiceImpl implements MediaServiceService {

	@Autowired
	private MediaFileRepository mediaFileRepository;

}

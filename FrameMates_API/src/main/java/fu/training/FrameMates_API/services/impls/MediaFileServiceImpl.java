package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.MediaFileRepository;
import fu.training.FrameMates_API.services.MediaFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaFileServiceImpl implements MediaFileService {

	@Autowired
	private MediaFileRepository mediaFileRepository;
}

package fu.training.FrameMates_API.mediaservice;

import fu.training.FrameMates_API.mediafile.MediaFileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaServiceServiceImpl implements MediaServiceService {

	@Autowired
	private MediaFileRepository mediaFileRepository;

}

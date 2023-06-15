package fu.training.FrameMates_API.mediafile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaFileServiceImpl implements MediaFileService {

	@Autowired
	private MediaFileRepository mediaFileRepository;
}

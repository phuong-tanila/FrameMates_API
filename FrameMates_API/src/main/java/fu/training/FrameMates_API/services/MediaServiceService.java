package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.MediaFileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MediaServiceService {

	@Autowired
	private MediaFileRepository mediaFileRepository;

}

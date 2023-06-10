package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.AttachmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttachmentService {

	@Autowired
	private AttachmentRepository attachmentRepository;

}

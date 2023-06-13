package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.AttachmentRepository;
import fu.training.FrameMates_API.services.AttachmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttachmentServiceImpl implements AttachmentService {

	@Autowired
	private AttachmentRepository attachmentRepository;

}

package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.CommentRepository;
import fu.training.FrameMates_API.services.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentRepository commentRepository;

}

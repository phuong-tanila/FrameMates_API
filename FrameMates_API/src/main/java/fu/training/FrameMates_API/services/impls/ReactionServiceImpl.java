package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.ReactionRepository;
import fu.training.FrameMates_API.services.ReactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReactionServiceImpl implements ReactionService {

	@Autowired
	private ReactionRepository reactionRepository;

}

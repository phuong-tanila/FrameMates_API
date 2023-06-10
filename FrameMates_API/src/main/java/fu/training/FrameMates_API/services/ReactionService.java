package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.ReactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReactionService {

	@Autowired
	private ReactionRepository reactionRepository;

}

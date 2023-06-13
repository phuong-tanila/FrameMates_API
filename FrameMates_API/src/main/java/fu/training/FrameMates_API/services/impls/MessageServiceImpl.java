package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.MessageRepository;
import fu.training.FrameMates_API.services.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	private MessageRepository messageRepository;

}

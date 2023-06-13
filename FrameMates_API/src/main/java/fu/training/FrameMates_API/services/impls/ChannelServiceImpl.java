package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.ChannelRepository;
import fu.training.FrameMates_API.services.ChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChannelServiceImpl implements ChannelService {

	@Autowired
	private ChannelRepository channelRepository;

}

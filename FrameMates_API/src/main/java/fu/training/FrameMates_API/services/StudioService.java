package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.StudioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudioService {

	@Autowired
	private StudioRepository studioRepository;

}

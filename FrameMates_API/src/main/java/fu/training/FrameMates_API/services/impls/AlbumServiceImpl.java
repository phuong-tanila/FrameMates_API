package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.AlbumRepository;
import fu.training.FrameMates_API.services.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AlbumServiceImpl implements AlbumService {

	@Autowired
	private AlbumRepository albumRepository;

}

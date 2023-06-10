package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.AlbumRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AlbumService {

	@Autowired
	private AlbumRepository albumRepository;

}

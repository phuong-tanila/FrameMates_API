package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.ComboServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComboServiceService {

	@Autowired
	private ComboServiceRepository comboServiceRepository;

}

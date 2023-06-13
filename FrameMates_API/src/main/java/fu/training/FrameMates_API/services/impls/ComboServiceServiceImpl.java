package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.ComboServiceRepository;
import fu.training.FrameMates_API.services.ComboServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComboServiceServiceImpl implements ComboServiceService {

	@Autowired
	private ComboServiceRepository comboServiceRepository;

}

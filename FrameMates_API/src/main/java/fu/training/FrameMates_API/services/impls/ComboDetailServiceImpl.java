package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.ComboDetailRepository;
import fu.training.FrameMates_API.services.ComboDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComboDetailServiceImpl implements ComboDetailService {

	@Autowired
	private ComboDetailRepository comboDetailRepository;

}

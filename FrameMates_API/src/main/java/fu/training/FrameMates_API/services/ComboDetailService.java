package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.ComboDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComboDetailService {

	@Autowired
	private ComboDetailRepository comboDetailRepository;

}

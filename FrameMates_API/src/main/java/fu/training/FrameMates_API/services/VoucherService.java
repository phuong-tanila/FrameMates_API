package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.VoucherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherService {

	@Autowired
	private VoucherRepository voucherRepository;

}

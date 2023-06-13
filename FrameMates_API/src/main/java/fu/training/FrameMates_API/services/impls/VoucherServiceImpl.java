package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.VoucherRepository;
import fu.training.FrameMates_API.services.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherServiceImpl implements VoucherService {

	@Autowired
	private VoucherRepository voucherRepository;

}

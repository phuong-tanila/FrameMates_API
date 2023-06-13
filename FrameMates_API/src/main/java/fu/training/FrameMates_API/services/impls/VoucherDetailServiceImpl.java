package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.VoucherDetailRepository;
import fu.training.FrameMates_API.services.VoucherDetailService;
import fu.training.FrameMates_API.services.VoucherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherDetailServiceImpl implements VoucherDetailService {

	@Autowired
	private VoucherDetailRepository voucherDetailRepository;

}

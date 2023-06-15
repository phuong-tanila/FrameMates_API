package fu.training.FrameMates_API.voucherdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherDetailServiceImpl implements VoucherDetailService {

	@Autowired
	private VoucherDetailRepository voucherDetailRepository;

}

package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.VoucherDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherDetailService {

	@Autowired
	private VoucherDetailRepository voucherDetailRepository;

}

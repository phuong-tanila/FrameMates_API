package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.VoucherWalletRepository;
import fu.training.FrameMates_API.services.VoucherWalletService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherWalletServiceImpl implements VoucherWalletService {

	@Autowired
	private VoucherWalletRepository voucherWalletRepository;

}

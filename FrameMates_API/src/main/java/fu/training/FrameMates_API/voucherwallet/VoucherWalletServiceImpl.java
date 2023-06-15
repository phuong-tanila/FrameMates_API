package fu.training.FrameMates_API.voucherwallet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherWalletServiceImpl implements VoucherWalletService {

	@Autowired
	private VoucherWalletRepository voucherWalletRepository;

}

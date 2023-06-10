package fu.training.FrameMates_API.services;

import fu.training.FrameMates_API.repositories.VoucherWalletRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherWalletService {

	@Autowired
	private VoucherWalletRepository voucherWalletRepository;

}

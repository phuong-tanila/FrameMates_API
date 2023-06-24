package fu.training.FrameMates_API.voucher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class VoucherServiceImpl implements VoucherService {
	@Autowired
	private VoucherMapper voucherMapper;
	@Autowired
	private VoucherRepository voucherRepository;
	private Voucher getVoucher(Integer id) {
		Voucher voucher = null;
		Optional optionalStudio = voucherRepository.findById(id);
		if (optionalStudio.isPresent()) {
			voucher = (Voucher) optionalStudio.get();
		}
		return voucher;
	}

	@Override
	public VoucherModel create(VoucherModel model) {
		return voucherMapper.toModel(voucherRepository.save(voucherMapper.toEntity(model)));
	}

	@Override
	public VoucherModel delete(Integer id) {
		Voucher voucher = getVoucher(id);
		if (voucher == null) {
			return null;
		}
		voucherRepository.delete(voucher);
		return voucherMapper.toModel(voucher);
	}
}

package fu.training.FrameMates_API.voucher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoucherServiceImpl implements VoucherService {
	@Autowired
	private VoucherMapper voucherMapper;
	@Autowired
	private VoucherRepository voucherRepository;

	@Override
	public VoucherModel create(VoucherModel model) {
		return voucherMapper.toModel(voucherRepository.save(voucherMapper.toEntity(model)));
	}
}

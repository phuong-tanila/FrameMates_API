package fu.training.FrameMates_API.voucher;

import fu.training.FrameMates_API.voucher.VoucherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/vouchers")
public class VoucherController {
	@Autowired
	private VoucherService voucherService;
	@PostMapping()
	public ResponseEntity create(@RequestBody VoucherModel voucher) {
		VoucherModel voucherModel = voucherService.create(voucher);
		return voucherModel!= null ? ResponseEntity.ok(voucherModel) : ResponseEntity.unprocessableEntity().build();
	}
}

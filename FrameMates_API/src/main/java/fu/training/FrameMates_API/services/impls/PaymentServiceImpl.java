package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.PaymentRepository;
import fu.training.FrameMates_API.services.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;

}

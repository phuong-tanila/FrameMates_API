package fu.training.FrameMates_API.voucherdetail;

import fu.training.FrameMates_API.voucherdetail.VoucherDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoucherDetailRepository extends JpaRepository<VoucherDetail, Integer> {
}

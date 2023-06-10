package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.VoucherDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoucherDetailRepository extends JpaRepository<VoucherDetail, Integer> {
}

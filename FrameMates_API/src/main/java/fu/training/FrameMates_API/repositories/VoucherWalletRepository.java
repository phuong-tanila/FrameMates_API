package fu.training.FrameMates_API.repositories;

import fu.training.FrameMates_API.entities.VoucherWallet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoucherWalletRepository extends JpaRepository<VoucherWallet, Integer> {
}
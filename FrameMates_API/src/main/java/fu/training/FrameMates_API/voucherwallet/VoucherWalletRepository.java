package fu.training.FrameMates_API.voucherwallet;

import fu.training.FrameMates_API.voucherwallet.VoucherWallet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoucherWalletRepository extends JpaRepository<VoucherWallet, Integer> {
}

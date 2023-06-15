package fu.training.FrameMates_API.voucherwallet;

import fu.training.FrameMates_API.voucherwallet.VoucherWallet;
import fu.training.FrameMates_API.voucherwallet.VoucherWalletModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface VoucherWalletMapper {

    VoucherWallet toEntity (VoucherWalletModel model);

    VoucherWalletModel toModel (VoucherWallet entity);
}

package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.VoucherWallet;
import fu.training.FrameMates_API.models.VoucherWalletModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface VoucherWalletMapper {

    VoucherWallet toEntity (VoucherWalletModel model);

    VoucherWalletModel toModel (VoucherWallet entity);
}

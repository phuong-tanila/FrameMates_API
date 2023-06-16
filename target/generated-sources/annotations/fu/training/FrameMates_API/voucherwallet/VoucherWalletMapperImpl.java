package fu.training.FrameMates_API.voucherwallet;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class VoucherWalletMapperImpl implements VoucherWalletMapper {

    @Override
    public VoucherWallet toEntity(VoucherWalletModel model) {
        if ( model == null ) {
            return null;
        }

        VoucherWallet voucherWallet = new VoucherWallet();

        return voucherWallet;
    }

    @Override
    public VoucherWalletModel toModel(VoucherWallet entity) {
        if ( entity == null ) {
            return null;
        }

        VoucherWalletModel voucherWalletModel = new VoucherWalletModel();

        return voucherWalletModel;
    }
}

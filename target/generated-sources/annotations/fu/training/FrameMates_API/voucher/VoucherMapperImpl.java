package fu.training.FrameMates_API.voucher;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-15T23:03:10+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class VoucherMapperImpl implements VoucherMapper {

    @Override
    public Voucher toEntity(VoucherModel model) {
        if ( model == null ) {
            return null;
        }

        Voucher voucher = new Voucher();

        return voucher;
    }

    @Override
    public VoucherModel toModel(Voucher entity) {
        if ( entity == null ) {
            return null;
        }

        VoucherModel voucherModel = new VoucherModel();

        return voucherModel;
    }
}

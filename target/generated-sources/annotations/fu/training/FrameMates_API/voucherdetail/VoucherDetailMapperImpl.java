package fu.training.FrameMates_API.voucherdetail;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class VoucherDetailMapperImpl implements VoucherDetailMapper {

    @Override
    public VoucherDetail toEntity(VoucherDetailModel model) {
        if ( model == null ) {
            return null;
        }

        VoucherDetail voucherDetail = new VoucherDetail();

        return voucherDetail;
    }

    @Override
    public VoucherDetailModel toModel(VoucherDetail entity) {
        if ( entity == null ) {
            return null;
        }

        VoucherDetailModel voucherDetailModel = new VoucherDetailModel();

        return voucherDetailModel;
    }
}

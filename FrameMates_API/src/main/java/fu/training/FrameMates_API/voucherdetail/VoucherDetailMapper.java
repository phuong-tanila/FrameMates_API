package fu.training.FrameMates_API.voucherdetail;

import fu.training.FrameMates_API.voucherdetail.VoucherDetail;
import fu.training.FrameMates_API.voucherdetail.VoucherDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface VoucherDetailMapper {

    VoucherDetail toEntity (VoucherDetailModel model);

    VoucherDetailModel toModel (VoucherDetail entity);
}

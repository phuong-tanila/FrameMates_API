package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.Voucher;
import fu.training.FrameMates_API.entities.VoucherDetail;
import fu.training.FrameMates_API.models.VoucherModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface VoucherMapper {

    Voucher toEntity (VoucherModel model);

    VoucherModel toModel (Voucher entity);
}

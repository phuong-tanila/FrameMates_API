package fu.training.FrameMates_API.voucher;

import fu.training.FrameMates_API.voucher.Voucher;
import fu.training.FrameMates_API.voucher.VoucherModel;
import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface VoucherMapper {

    Voucher toEntity (VoucherModel model);

    VoucherModel toModel (Voucher entity);
}

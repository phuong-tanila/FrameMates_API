package fu.training.FrameMates_API.mappers;

import fu.training.FrameMates_API.entities.VoucherDetail;
import fu.training.FrameMates_API.models.VoucherDetailModel;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface VoucherDetailMapper {

    VoucherDetail toEntity (VoucherDetailModel model);

    VoucherDetailModel toModel (VoucherDetail entity);
}

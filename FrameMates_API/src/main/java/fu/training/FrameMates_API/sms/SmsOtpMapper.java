package fu.training.FrameMates_API.sms;

import org.mapstruct.Mapper;
import org.mapstruct.NullValuePropertyMappingStrategy;

@Mapper(
        componentModel = "spring",
        nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE
)
public interface SmsOtpMapper {
    SmsOtp toEntiy(SmsOtpModel model);

    SmsOtpModel toModel(SmsOtp entity);
}

package fu.training.FrameMates_API.sms;

import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-18T17:03:44+0700",
    comments = "version: 1.4.1.Final, compiler: javac, environment: Java 17.0.5 (Oracle Corporation)"
)
@Component
public class SmsOtpMapperImpl implements SmsOtpMapper {

    @Override
    public SmsOtp toEntiy(SmsOtpModel model) {
        if ( model == null ) {
            return null;
        }

        SmsOtp smsOtp = new SmsOtp();

        smsOtp.setOtpId( model.getOtpId() );
        smsOtp.setCreateAt( model.getCreateAt() );
        smsOtp.setExpiredAt( model.getExpiredAt() );
        smsOtp.setPhoneNumber( model.getPhoneNumber() );

        return smsOtp;
    }

    @Override
    public SmsOtpModel toModel(SmsOtp entity) {
        if ( entity == null ) {
            return null;
        }

        SmsOtpModel smsOtpModel = new SmsOtpModel();

        smsOtpModel.setOtpId( entity.getOtpId() );
        smsOtpModel.setCreateAt( entity.getCreateAt() );
        smsOtpModel.setExpiredAt( entity.getExpiredAt() );
        smsOtpModel.setPhoneNumber( entity.getPhoneNumber() );

        return smsOtpModel;
    }
}

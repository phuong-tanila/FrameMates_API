package fu.training.FrameMates_API.sms;

import fu.training.FrameMates_API.share.exceptions.InvalidOtpException;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;

public interface SmsOtpService {
    SmsOtpModel sendOtp(String phoneNumber);

    String generateOTP();

    boolean verifyOTP(int otpId, String phoneNumber, String otpValue)throws InvalidOtpException;
}

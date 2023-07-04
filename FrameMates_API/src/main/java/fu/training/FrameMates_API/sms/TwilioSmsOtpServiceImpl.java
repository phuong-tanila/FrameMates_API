package fu.training.FrameMates_API.sms;

import com.twilio.Twilio;
import com.twilio.twiml.messaging.Body;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;
import fu.training.FrameMates_API.share.exceptions.InvalidOtpException;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.Optional;
import java.util.Random;

@Service
public class TwilioSmsOtpServiceImpl implements SmsOtpService {
    @Autowired
    private SmsOtpRepository smsOtpRepository;
    @Autowired
    private SmsOtpMapper mapper;
    @Autowired
    private fu.training.FrameMates_API.share.configs.SmsConfig smsConfig;
    @Value("${sms.twilio.sid}")
    private String sid;

    @Value("${sms.twilio.auth-token}")
    private String authToken;

    @Value("${sms.twilio.phone-number}")
    private String twilioPhoneNumber;

    private PhoneNumber fromPhoneNumber;
    @PostConstruct
    public void setUpTwilio(){
        Twilio.init(sid, authToken);
        fromPhoneNumber = new PhoneNumber(twilioPhoneNumber);
    }


    @Override
    public SmsOtpModel sendOtp(String phoneNumber) {
        String otp = generateOTP();
        SmsOtp sms = new SmsOtp();
        String body = smsConfig.getOtpBodyTemplate() + otp;
        PhoneNumber toPhoneNumber = new PhoneNumber(phoneNumber);
//        Message message = Message.creator(
//                toPhoneNumber,
//                fromPhoneNumber,
//                body
//        ).create();
        sms.setOtpValue(otp);
        sms.setCreateAt(new Timestamp(new Date().getTime()));
        sms.setExpiredAt(new Timestamp(new Date().getTime() + smsConfig.getOtpExpiration()));
        sms.setPhoneNumber(phoneNumber);
        sms = smsOtpRepository.save(sms);
        return mapper.toModel(sms);
    }

    @Override
    public String generateOTP() {
        return new DecimalFormat("000000")
                .format(new Random().nextInt(999999));
    }

    private SmsOtp findOtp(int otpId, String phoneNumber, String otpValue) throws InvalidOtpException{

        Optional<SmsOtp> optionalSmsOtp = smsOtpRepository
                .findByOtpIdAndPhoneNumberAndOtpValue(otpId, phoneNumber, otpValue);
        if(optionalSmsOtp.isEmpty())
            throw new InvalidOtpException("Sms otp invalid!!");
        return optionalSmsOtp.get();
    }
    @Override
    public boolean verifyOTP(int otpId, String phoneNumber, String otpValue)throws InvalidOtpException {
        SmsOtp smsOtp = findOtp(otpId, phoneNumber, otpValue);
        Timestamp currentTimeStamp = new Timestamp(new Date().getTime());
        if(smsOtp.getExpiredAt().before(currentTimeStamp))
            throw new InvalidOtpException("Sms otp expired");
        return true;
    }
}

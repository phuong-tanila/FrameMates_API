package fu.training.FrameMates_API.share.configs;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
@Getter
@Setter
public class SmsConfig {
    @Value("${sms.otp-expiration}")
    private long otpExpiration;

    @Value("${sms.otp-body-template}")
    private String otpBodyTemplate;
}

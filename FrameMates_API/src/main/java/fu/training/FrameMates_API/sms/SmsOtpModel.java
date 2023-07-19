package fu.training.FrameMates_API.sms;

import fu.training.FrameMates_API.share.validators.phone_validator.Phone;
import jakarta.persistence.Column;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class SmsOtpModel {
    private Integer otpId;

    private java.sql.Timestamp createAt;

    private java.sql.Timestamp expiredAt;

    @NotBlank(message = "Phone number not specified!")
    @Phone
    private String phoneNumber;
}

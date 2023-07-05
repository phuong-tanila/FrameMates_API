package fu.training.FrameMates_API.sms;

import jakarta.persistence.Column;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class SmsOtpModel {
    private Integer otpId;

    @Column(name="CreateAt")
    private java.sql.Timestamp createAt;

    @Column(name="ExpiredAt")
    private java.sql.Timestamp expiredAt;

    @NotBlank(message = "Phone number not specified!")
    private String phoneNumber;
}

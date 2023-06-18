package fu.training.FrameMates_API.sms;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import fu.training.FrameMates_API.share.exceptions.InvalidOtpException;
import jakarta.persistence.*;
import jakarta.transaction.Transactional;
import lombok.*;

import java.sql.Timestamp;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Transactional
@JsonSerialize
@Table(name="SmsOtp")
public class SmsOtp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="OtpId")
    private Integer otpId;

    @Column(name="CreateAt")
    private java.sql.Timestamp createAt;

    @Column(name="ExpiredAt")
    private java.sql.Timestamp expiredAt;

    @Column(name="OtpValue")
    private String otpValue;

    @Column(name="PhoneNumber")
    private String phoneNumber;


}

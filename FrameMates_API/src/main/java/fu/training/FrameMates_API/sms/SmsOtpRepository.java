package fu.training.FrameMates_API.sms;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface SmsOtpRepository extends JpaRepository<SmsOtp, Integer> {
//    @Query("select s from SmsOtp s where s.otpId = :otpId and s.phoneNumber = :phoneNumber and s.otpValue = :otpValue")
//    SELECT a FROM Account a WHERE a.username = :credetial OR a.phone = :credetial
    Optional<SmsOtp> findByOtpIdAndPhoneNumberAndOtpValue(int otpId, String phoneNumber, String otpValue);

}

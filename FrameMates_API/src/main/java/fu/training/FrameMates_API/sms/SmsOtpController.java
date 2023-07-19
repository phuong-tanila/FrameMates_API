package fu.training.FrameMates_API.sms;

import com.fasterxml.jackson.databind.JsonNode;
import fu.training.FrameMates_API.share.exceptions.InvalidOtpException;
import jakarta.validation.Valid;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.message.BasicHttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/otp")
public class SmsOtpController {
    @Autowired
    private SmsOtpService smsOtpService;
    @PostMapping("")
    public ResponseEntity sendOtp(@RequestBody SmsOtpModel smsModel){

        return new ResponseEntity(
                smsOtpService.sendOtp(smsModel.getPhoneNumber()),
                HttpStatus.CREATED
        );
    }

    @PostMapping("/verify")
    // remember to encode phoneNumber (from + to %2B)
    public ResponseEntity verifyOtp(
            @RequestBody @Valid SmsOtpModel model
            ) throws InvalidOtpException {
        return ResponseEntity.ok(smsOtpService.verifyOTP(model.getOtpId(), model.getPhoneNumber(), model.getOtpValue()));
    }

}

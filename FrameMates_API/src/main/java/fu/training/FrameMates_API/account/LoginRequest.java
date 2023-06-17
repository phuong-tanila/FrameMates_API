package fu.training.FrameMates_API.account;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
@ToString

public class LoginRequest {
    @NotNull(message = "You must enter username or email")
    private String credential;
    private String password;


}

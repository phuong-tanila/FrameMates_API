package fu.training.FrameMates_API.account;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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
    @Size(min = 5, max = 12)
    @NotBlank
    private String credential;
    @Size(min = 8, max = 20)
    @NotBlank
    private String password;


}

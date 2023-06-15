package fu.training.FrameMates_API.account;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter
@Setter
@ToString

public class LoginRequest {

    private String credential;
    private String password;


}

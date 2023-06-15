package fu.training.FrameMates_API.account;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Getter @Setter
@ToString
@AllArgsConstructor
public class TokenResponse {
    private String accessToken;
    private String refreshToken;
}

package fu.training.FrameMates_API.account;

import io.jsonwebtoken.Claims;
import org.springframework.security.core.userdetails.UserDetails;

public interface JwtService {
    public String generateToken(TokenTypeEnum tokenTypeEnum, UserDetails userDetails);

    public Claims getClaimsFromToken(TokenTypeEnum tokenTypeEnum, String token);
}

package fu.training.FrameMates_API.account;

import fu.training.FrameMates_API.share.exceptions.ExceptionResponse;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/auth")
public class AuthenticateController {
    @Autowired
    private AccountService accountService;
    @Autowired
    private JwtService jwtService;
    @Autowired
    private AuthenticationProvider authenticationProvider;
    @PostMapping("/login")
    public ResponseEntity login(@Valid @RequestBody LoginRequest request){
            Authentication authentication = authenticationProvider.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            request.getCredential(),
                            request.getPassword()
                    )
            );
            
//			SecurityContextHolder.getContext().setAuthentication(authentication);
            String accessToken = jwtService.generateToken(TokenType.ACCESSTOKEN, (Account) authentication.getPrincipal());
            String refreshToken = jwtService.generateToken(TokenType.REFRESHTOKEN, (Account) authentication.getPrincipal());
            return new ResponseEntity<TokenResponse>(new TokenResponse(accessToken, refreshToken), HttpStatus.OK);

    }
    @PostMapping("/aaa")
    public ResponseEntity create(
//			@RequestBody CommentModel commentModel,
            Authentication authentication
    ){
        return new ResponseEntity<>(authentication.getPrincipal(), HttpStatus.OK);
    }

}

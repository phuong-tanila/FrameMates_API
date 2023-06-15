package fu.training.FrameMates_API.account;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/authenticate")
public class Test {

    @Autowired
    private AccountService accountService;

    @PostMapping("/login")
    public ResponseEntity<Account> login(LoginRequest request){
        return new ResponseEntity<Account>((Account) accountService.loadUserByUsername(request.getCredential()), HttpStatus.OK);
    }
}

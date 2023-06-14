package fu.training.FrameMates_API.services.impls;

import fu.training.FrameMates_API.repositories.AccountRepository;
import fu.training.FrameMates_API.services.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountRepository accountRepository;
}

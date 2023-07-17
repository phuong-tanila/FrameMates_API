package fu.training.FrameMates_API.administrator;

import fu.training.FrameMates_API.administrator.Administrator;
import org.springframework.security.core.Authentication;

public interface AdministratorService {
    long count();

    Administrator createAdmin(Administrator admin);

    AdministratorModel getCurrentAdmin(Authentication authentication) throws IllegalAccessException;
    //    Administrator
}

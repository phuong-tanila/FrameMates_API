package fu.training.FrameMates_API.share.helpers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.administrator.AdministratorService;
import fu.training.FrameMates_API.customer.CustomerService;
import fu.training.FrameMates_API.studio.StudioService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;

import java.io.IOException;
import java.util.List;

@Component
@Slf4j
public class DbInitializer {

    private final ResourceLoader resourceLoader;
    private final StudioService studioService;
    private final AccountService accountService;
    private final AdministratorService administratorService;
    private final PasswordEncoder passwordEncoder;
    private final CustomerService customerService;

    @Autowired
    public DbInitializer(
            ResourceLoader resourceLoader,
            StudioService studioService,
            AdministratorService administratorService,
            AccountService accountService,
            CustomerService customerService,
            PasswordEncoder passwordEncoder
    ) {
        this.resourceLoader = resourceLoader;
        this.studioService = studioService;
        this.administratorService = administratorService;
        this.accountService = accountService;
        this.customerService = customerService;
        this.passwordEncoder = passwordEncoder;
    }

    public void init() throws IOException {
        log.error(Long.toString(studioService.count()));
        if(studioService.count() == 0) {
            var jsonData = readDataFromJsonFile("data.json");
            ObjectMapper objectMapper = new ObjectMapper();
            List<Studio> studios = objectMapper.readValue(jsonData,  new TypeReference<List<Studio>>(){});
            Administrator admin = new Administrator();
            Account account = new Account();
            account.setEmail("thanh@gmail.com");
            account.setPhone("03231354558");
            account.setUsername("thanh");
            account.setPassword(passwordEncoder.encode("1509"));
            account.setFullName("Thành");
            accountService.createAccount(account);
            admin.setAccount(account);
            administratorService.createAdmin(admin);
            studios.forEach(s -> {
                s.setAdmin(admin);
                s.setAddress("Hồ Chí Minh");
                studioService.createStudio(s);
            });
        }
//        objectMapper.
    }
    private byte[] readDataFromJsonFile(String fileName) throws IOException{
        Resource resource = resourceLoader.getResource("classpath:" + fileName);
        return FileCopyUtils.copyToByteArray(resource.getInputStream());
    }

}

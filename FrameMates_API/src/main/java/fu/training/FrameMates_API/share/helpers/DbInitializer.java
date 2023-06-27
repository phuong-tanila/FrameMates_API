package fu.training.FrameMates_API.share.helpers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import fu.training.FrameMates_API.account.Account;
import fu.training.FrameMates_API.account.AccountService;
import fu.training.FrameMates_API.administrator.Administrator;
import fu.training.FrameMates_API.share.exceptions.RecordNotFoundException;
import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.administrator.AdministratorService;
import fu.training.FrameMates_API.customer.CustomerService;
import fu.training.FrameMates_API.studio.StudioService;
import fu.training.FrameMates_API.tag.Tag;
import fu.training.FrameMates_API.tag.TagService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@Component
@Slf4j
public class DbInitializer {

    private final ResourceLoader resourceLoader;
    private final StudioService studioService;
    private final AccountService accountService;
    private final AdministratorService administratorService;
    private final PasswordEncoder passwordEncoder;

    private final TagService tagService;
    private final CustomerService customerService;

    @Autowired
    public DbInitializer(
            ResourceLoader resourceLoader,
            StudioService studioService,
            AdministratorService administratorService,
            AccountService accountService,
            CustomerService customerService,
            PasswordEncoder passwordEncoder,
            TagService tagService
    ) {
        this.resourceLoader = resourceLoader;
        this.studioService = studioService;
        this.administratorService = administratorService;
        this.accountService = accountService;
        this.customerService = customerService;
        this.passwordEncoder = passwordEncoder;
        this.tagService = tagService;
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
                s.getStudio_servicePack().forEach(service -> {
                    service.setCreateDate(new Timestamp(System.currentTimeMillis()));
                    service.setStudio(s);
                    service.setSoldCount(0);
                    service.setDiscount(0);
                    service.setView(0);
//                    service.set
                });
                studioService.createStudio(s);
            });
        }
//        objectMapper.
    }
    private void initTagIfNotExist(){
        if(tagService.countTag() == 0) {
            List<Tag> tags = new ArrayList<>();
            tags.add(new Tag("travel"));
            tags.add(new Tag("portrait"));
            tags.add(new Tag("animals"));
            tags.add(new Tag("nature"));
            tags.add(new Tag("art"));
            tags.add(new Tag("landscape"));
            tags.add(new Tag("fashion"));
            tagService.createTags(tags);
        }
    }
    private List<Tag> generateRandomTags(int number) throws RecordNotFoundException {
        initTagIfNotExist();
        int maxTagId = (int) tagService.countTag();
        List<Tag> result = new ArrayList<>();
        for (int i = 0; i < number; i++) {
            int randomNum = ThreadLocalRandom.current().nextInt(0, maxTagId);
            result.add(tagService.getById(randomNum));
        }
        return result;
    }
    private byte[] readDataFromJsonFile(String fileName) throws IOException{
        Resource resource = resourceLoader.getResource("classpath:" + fileName);
        return FileCopyUtils.copyToByteArray(resource.getInputStream());
    }

}

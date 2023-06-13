package fu.training.FrameMates_API.helpers;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import fu.training.FrameMates_API.entities.Administrator;
import fu.training.FrameMates_API.entities.Studio;
import fu.training.FrameMates_API.services.AdministratorService;
import fu.training.FrameMates_API.services.CustomerService;
import fu.training.FrameMates_API.services.StudioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;

import java.io.IOException;
import java.util.List;

@Component
public class DbInitializer {

    private final ResourceLoader resourceLoader;
    private final StudioService studioService;
    private final AdministratorService administratorService;

    private final CustomerService customerService;
    @Autowired
    public DbInitializer(ResourceLoader resourceLoader, StudioService studioService, AdministratorService administratorService, CustomerService customerService) {
        this.resourceLoader = resourceLoader;
        this.studioService = studioService;
        this.administratorService = administratorService;
        this.customerService = customerService;
    }

    public void init() throws IOException {
        if(studioService.count() == 0) {
            var jsonData = readDataFromJsonFile("data.json");
            ObjectMapper objectMapper = new ObjectMapper();
            List<Studio> studios = objectMapper.readValue(jsonData,  new TypeReference<List<Studio>>(){});
            Administrator admin = new Administrator();
            admin.setEmail("thanh@gmail.com");
            admin.setPassword("thanh1509");
            admin.setName("Thành");
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
    private void initStudio() throws IOException {


    }
}

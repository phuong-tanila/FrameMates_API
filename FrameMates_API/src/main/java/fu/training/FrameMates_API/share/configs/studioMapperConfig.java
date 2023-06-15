package fu.training.FrameMates_API.share.configs;

import fu.training.FrameMates_API.studio.Studio;
import fu.training.FrameMates_API.studio.StudioMapper;
import fu.training.FrameMates_API.studio.StudioMapperImpl;
import fu.training.FrameMates_API.studio.StudioModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class studioMapperConfig {
    @Bean
    public StudioMapper studioMapper() {
        return new StudioMapperImpl();
    }
}

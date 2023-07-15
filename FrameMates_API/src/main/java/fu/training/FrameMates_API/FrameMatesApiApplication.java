package fu.training.FrameMates_API;

import fu.training.FrameMates_API.customer.CustomerRepository;
import fu.training.FrameMates_API.share.helpers.DbInitializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class FrameMatesApiApplication {
	public static void main(String[] args) {
		SpringApplication.run(FrameMatesApiApplication.class, args);
	}

}

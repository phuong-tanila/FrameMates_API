package fu.training.FrameMates_API;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication (scanBasePackages = {"filters"})
public class FrameMatesApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(FrameMatesApiApplication.class, args);
	}

}

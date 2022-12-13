package toyproject.member;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "test")
@SpringBootApplication
public class ToyprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ToyprojectApplication.class, args);
	}

}

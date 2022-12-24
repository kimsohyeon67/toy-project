package toyproject.member;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ComponentScan(basePackages = "passport")
@ComponentScan(basePackages = "oauth")
@ComponentScan(basePackages = "main")
@ComponentScan(basePackages = "ticket")

@EnableJpaRepositories(basePackages = "repository")
@EntityScan("domain")
@SpringBootApplication
public class ToyprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(ToyprojectApplication.class, args);
	}

}

package com.mvcsecurityjpa.t2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class Transfer2Application {

	public static void main(String[] args) {
		SpringApplication.run(Transfer2Application.class, args);
	}
}



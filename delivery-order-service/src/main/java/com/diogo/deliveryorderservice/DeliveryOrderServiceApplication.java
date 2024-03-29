package com.diogo.deliveryorderservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class DeliveryOrderServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(DeliveryOrderServiceApplication.class, args);
	}

}

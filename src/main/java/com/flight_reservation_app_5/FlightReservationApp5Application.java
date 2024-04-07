package com.flight_reservation_app_5;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class FlightReservationApp5Application  extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(FlightReservationApp5Application.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(FlightReservationApp5Application.class, args);


	}


}

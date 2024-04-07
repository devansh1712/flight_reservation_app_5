package com.flight_reservation_app_5.controller;

import java.util.Date;
import java.lang.String;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_reservation_app_5.entity.Flight;
import com.flight_reservation_app_5.repository.FlightRepository;

@Controller
public class FlightController { 
	
	@Autowired
	private FlightRepository flightRepo;

	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("departureDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date departureDate,
			ModelMap modelMap) {

		List<Flight> Flights = flightRepo.findFlights(from, to , departureDate );
            modelMap.addAttribute("findFlights",Flights);
		
		return "displayFlights";
	}
	@RequestMapping("/showCompleteReservation")
	public  String showCompleteReservation(@RequestParam("flightId") Long flightId ,ModelMap modelMap) {
	
		Optional<Flight> findbyId = flightRepo.findById(flightId);
		Flight flight = findbyId.get();
//		System.out.println(flight.getId());
//		System.out.println(flight.getArrivalCity());
//		System.out.println(flight.getDepartureCity());
//		System.out.println(flight.getFlightNumber());
//		System.out.println(flight.getOperatingAirlines());
		modelMap.addAttribute("flight",flight);
		return "showCompleteReservation";
		
	}
}


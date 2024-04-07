package com.flight_reservation_app_5.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flight_reservation_app_5.dto.ReservationUpdationRequest;
import com.flight_reservation_app_5.entity.Reservation;
import com.flight_reservation_app_5.repository.ReservationRepository;

@RestController
public class ReservationRestController {
	
	@Autowired
	private ReservationRepository reservationRepo;

	@RequestMapping("/reservation/{id}")
	public Reservation findReservation(@PathVariable ("id") Long id) {
		Optional<Reservation> findbyId = reservationRepo.findById(id);
		Reservation reservation = findbyId.get();
		return reservation;
		
	}
	
	@RequestMapping("/reservation")
	public Reservation updateReservation(@RequestBody ReservationUpdationRequest request) {
		Optional<Reservation> byId = reservationRepo.findById(request.getId());
		Reservation reservation = byId.get();
		reservation.setCheckedIn(request.isCheckedIn());
		reservation.setNumberOfBags(request.getNumberOfBags());
		return reservationRepo.save(reservation);
	}
	
}

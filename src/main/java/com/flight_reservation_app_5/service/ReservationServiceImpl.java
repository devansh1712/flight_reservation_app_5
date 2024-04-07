package com.flight_reservation_app_5.service;

import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.flight_reservation_app_5.dto.ReservationRequest;
import com.flight_reservation_app_5.entity.Flight;
import com.flight_reservation_app_5.entity.Passenger;
import com.flight_reservation_app_5.entity.Reservation;
import com.flight_reservation_app_5.repository.FlightRepository;
import com.flight_reservation_app_5.repository.PassengerRepository;
import com.flight_reservation_app_5.repository.ReservationRepository;
import com.flight_reservation_app_5.utilities.EmailUtil;
import com.flight_reservation_app_5.utilities.PDFgenerator;
// We r creating service layer because we r deal with multiple table in database.
@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private PassengerRepository PassengerRepo;
	
	@Autowired
	private FlightRepository flightRepo;
	
	@Autowired
	private ReservationRepository reservationrepo;
	
	@Autowired
	private PDFgenerator pdfGenerator;
	
	@Autowired
	private EmailUtil emailUtil;
	
	// String filePath="F:\\PROJECT\\PDFGenarator(Flight Project)\\booking\\";

	@Override
	public Reservation bookFlight(ReservationRequest request) {	 
				Passenger passenger = new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setLastName(request.getLastName());
		passenger.setMiddleName(request.getMiddelName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());
		PassengerRepo.save(passenger);
		
		long flightId = request.getFlightId();
		Optional<Flight> findbyId = flightRepo.findById(flightId);
		Flight flight = findbyId.get();
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		 String filePath="F:\\spring Boot\\spring boot code\\flight_reservation_app_5\\tickets\\reservation"+reservation.getId()+".pdf";

		reservationrepo.save(reservation);
		
		pdfGenerator.generateItinerary(reservation, filePath);
		emailUtil.sendItinerary(passenger.getEmail(),filePath);
		return reservation;
	}

}

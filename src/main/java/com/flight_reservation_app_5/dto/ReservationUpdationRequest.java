package com.flight_reservation_app_5.dto;

public class ReservationUpdationRequest {
private long id;
private boolean checkedIn;
private int numberOfBags;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public boolean isCheckedIn() {
	return checkedIn;
}
public void setCheckedIn(boolean checkedIn) {
	this.checkedIn = checkedIn;
}
public int getNumberOfBags() {
	return numberOfBags;
}
public void setNumberOfBags(int numberOfBags) {
	this.numberOfBags = numberOfBags;
}

}

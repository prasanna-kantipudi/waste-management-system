package com.manoj.repos;

import org.springframework.data.repository.CrudRepository;

import com.manoj.beans.Booking;

public interface SlotBookingRepo extends CrudRepository<Booking,Integer>{
	
}

package in.hotel.dao;

import in.hotel.entity.Booking;

public interface BookingDAO {
	
	boolean BookingSave(Booking e);
	
	boolean delete(int bid);

}

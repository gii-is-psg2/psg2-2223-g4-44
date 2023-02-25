package org.springframework.samples.petclinic.hotel.booking;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.samples.petclinic.hotel.HotelRepository;
import org.springframework.samples.petclinic.hotel.room.RoomRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BookingService {
    
    private BookingRepository bookingRepository;
    private RoomRepository roomRepository;
	private HotelRepository hotelRepository;

    @Autowired
    public BookingService(BookingRepository bookingRepository,
        RoomRepository roomRepository, 
        HotelRepository hotelRepository) {
        this.bookingRepository = bookingRepository;
		this.roomRepository = roomRepository;
		this.hotelRepository = hotelRepository;
	}

    @Transactional(readOnly = true)
    public Booking findById(int id) {
        return bookingRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public Collection<Booking> findAll() throws DataAccessException {
        return bookingRepository.findAll();
    }
}

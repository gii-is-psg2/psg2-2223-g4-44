package org.springframework.samples.petclinic.hotel;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.samples.petclinic.hotel.booking.BookingRepository;
import org.springframework.samples.petclinic.hotel.room.RoomRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class HotelService {
	private HotelRepository hotelRepository;

    @Autowired
    public HotelService(HotelRepository hotelRepository) {
		this.hotelRepository = hotelRepository;
	}

    @Transactional(readOnly = true)
    public Hotel findById(int id) {
        return hotelRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public Collection<Hotel> findAll() throws DataAccessException {
        return hotelRepository.findAll();
    }
}

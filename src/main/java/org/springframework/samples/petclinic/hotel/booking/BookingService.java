package org.springframework.samples.petclinic.hotel.booking;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BookingService {
    
    private BookingRepository bookingRepository;

    @Autowired
    public BookingService(BookingRepository bookingRepository) {
        this.bookingRepository = bookingRepository;
	}

    @Transactional(readOnly = true)
    public Booking findById(int id) {
        return bookingRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public Collection<Booking> findAll() throws DataAccessException {
        return bookingRepository.findAll();
    }

    @Transactional
    public Booking save(Booking booking){
        return bookingRepository.save(booking);
    }
}

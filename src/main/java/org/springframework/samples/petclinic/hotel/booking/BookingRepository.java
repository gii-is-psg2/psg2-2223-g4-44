package org.springframework.samples.petclinic.hotel.booking;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BookingRepository extends CrudRepository<Booking, Integer> {
    
    @Query("SELECT b FROM Booking b where b.id=:id")
    public Booking findById(@Param("id") int id);

    Collection<Booking> findAll();

    @Query("SELECT COUNT(b) FROM Booking b where b.room.id=:roomId")
    public Integer countBookingInRoom(@Param("roomId") Integer id);
}

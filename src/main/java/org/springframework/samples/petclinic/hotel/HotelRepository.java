package org.springframework.samples.petclinic.hotel;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface HotelRepository extends CrudRepository<Hotel, Integer> {
    @Query("SELECT h FROM Hotel h where h.id=:id")
    public Hotel findById(@Param("id") int id);

    Collection<Hotel> findAll();
}

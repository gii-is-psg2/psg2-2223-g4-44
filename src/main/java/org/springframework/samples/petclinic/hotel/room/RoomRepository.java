package org.springframework.samples.petclinic.hotel.room;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface RoomRepository extends CrudRepository<Room, Integer> {
    @Query("SELECT r FROM Room r where r.id=:id")
    public Room findById(@Param("id") int id);

    Collection<Room> findAll();
}
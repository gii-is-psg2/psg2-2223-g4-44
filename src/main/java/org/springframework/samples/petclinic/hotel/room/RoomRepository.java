package org.springframework.samples.petclinic.hotel.room;

import org.springframework.data.repository.CrudRepository;

public interface RoomRepository extends CrudRepository<Room, Integer> {
    
}
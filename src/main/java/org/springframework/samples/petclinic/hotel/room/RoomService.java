package org.springframework.samples.petclinic.hotel.room;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RoomService {
    private RoomRepository roomRepository;

    @Autowired
    public RoomService(RoomRepository roomRepository) {
		this.roomRepository = roomRepository;
	}

    @Transactional(readOnly = true)
    public Room findById(int id) {
        return roomRepository.findById(id);
    }

    @Transactional(readOnly = true)
    public Collection<Room> findAll() throws DataAccessException {
        return roomRepository.findAll();
    }
}

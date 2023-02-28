package org.springframework.samples.petclinic.hotel.room;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomController {

    private static final String LIST_ROOMS = "rooms/roomList";
    
    private RoomService roomService;

    @Autowired
    public RoomController(RoomService roomService) {
		this.roomService = roomService;
	}

    @GetMapping("/rooms")
    public String showRooms(ModelMap model){
        Collection<Room> listRoom = roomService.findAll();
        model.put("rooms", listRoom);
        return LIST_ROOMS;
    }
}

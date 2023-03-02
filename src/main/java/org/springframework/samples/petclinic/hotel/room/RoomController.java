package org.springframework.samples.petclinic.hotel.room;

import java.util.Collection;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.hotel.booking.Booking;
import org.springframework.samples.petclinic.hotel.booking.BookingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoomController {

    private static final String LIST_ROOMS = "rooms/roomList";
    
    private RoomService roomService;
    private BookingService bookingService;

    @Autowired
    public RoomController(RoomService roomService, BookingService bookingService) {
		this.roomService = roomService;
        this.bookingService = bookingService;
	}

    @GetMapping("/rooms")
    public String showRooms(ModelMap model){
        Collection<Room> listRoom = roomService.findAll();
        Map<Integer,Integer> bookingMap = listRoom.stream()
        .collect(Collectors.toMap(k -> k.getRoomNumber(), v -> bookingService.countBookingsAtRoom(v.getId())));
        model.put("rooms", listRoom);
        model.put("bookingMap", bookingMap);
        return LIST_ROOMS;
    }
}

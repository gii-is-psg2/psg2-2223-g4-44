package org.springframework.samples.petclinic.hotel.booking;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.hotel.Hotel;
import org.springframework.samples.petclinic.hotel.HotelService;
import org.springframework.samples.petclinic.hotel.room.Room;
import org.springframework.samples.petclinic.hotel.room.RoomService;
import org.springframework.samples.petclinic.owner.OwnerService;
import org.springframework.samples.petclinic.pet.Pet;
import org.springframework.samples.petclinic.pet.PetService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BookingController {
    private static final String BOOK = "booking/book";

    private BookingService bookingService;
    private RoomService roomService;
    private HotelService hotelService;
    private PetService petService;
    private OwnerService ownerService;

    @Autowired
    public BookingController(BookingService bookingService,
            RoomService roomService,
            HotelService hotelService, PetService petService, OwnerService ownerService) {
        this.bookingService = bookingService;
        this.roomService = roomService;
        this.hotelService = hotelService;
        this.petService = petService;
        this.ownerService = ownerService;
    }

    @GetMapping("/booking/book/{room_id}")
    public String bookingForm(ModelMap model, @PathVariable("room_id") Integer roomId) {
        Room room = roomService.findById(roomId);
        Booking booking = new Booking();
        List<Pet> pets = ownerService.findPetsByOwner(ownerService.ownerSesion().getId());
        List<String> nameList = pets.stream().map(x -> x.getName()).collect(Collectors.toList());
        model.put("booking", booking);
        model.put("room", room);
        model.put("pets", nameList);
        return BOOK;
    }

    @PostMapping("/booking/book/{room_id}")
    public String bookingGenerate(@Valid BookingAddModel booking, @PathVariable("room_id") Integer roomId) {
        Room room = roomService.findById(roomId);
        Hotel hotel = room.getHotel();
        List<Pet> userPets = ownerService.findPetsByOwner(ownerService.ownerSesion().getId());
        Pet pet = userPets.stream().filter(x -> x.getName().equals(booking.getPet())).findFirst().get();
        
        Booking newBooking = new Booking();
        newBooking.setRoom(room);
        newBooking.setHotel(hotel);
        newBooking.setPet(pet);
        newBooking.setEndDate(booking.getEndDate());
        newBooking.setStartDate(booking.getStartDate());

        bookingService.save(newBooking);
        return "redirect:/rooms";
    }
}

package org.springframework.samples.petclinic.hotel.booking;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.samples.petclinic.hotel.Hotel;
import org.springframework.samples.petclinic.hotel.room.Room;
import org.springframework.samples.petclinic.model.BaseEntity;
import org.springframework.samples.petclinic.pet.Pet;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "booking")
@Getter
@Setter
public class Booking extends BaseEntity {
    
    private Date startDate;

    private Date endDate;

    @ManyToOne
    private Pet pet;

    @ManyToOne
    private Room room;

    @ManyToOne
    private Hotel hotel;
}

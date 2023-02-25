package org.springframework.samples.petclinic.hotel.room;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Positive;

import org.springframework.samples.petclinic.hotel.Hotel;
import org.springframework.samples.petclinic.model.BaseEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "room")
@Getter
@Setter
public class Room extends BaseEntity {

    @Positive
    private Integer roomNumber;

    @Positive
    private Integer floor;

    @ManyToOne
    private Hotel hotel;
}

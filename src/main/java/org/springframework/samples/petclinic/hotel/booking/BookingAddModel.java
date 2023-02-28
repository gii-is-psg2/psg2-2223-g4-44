package org.springframework.samples.petclinic.hotel.booking;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookingAddModel {
    private Date startDate;

    private Date endDate;

    private String pet;
}

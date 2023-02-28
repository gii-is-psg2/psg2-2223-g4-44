package org.springframework.samples.petclinic.hotel;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Positive;

import org.springframework.samples.petclinic.model.NamedEntity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "hotel")
@Getter
@Setter
public class Hotel extends NamedEntity {
    
    @Positive
    private Integer floors;

}

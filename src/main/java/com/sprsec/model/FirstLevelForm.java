package com.sprsec.model;

import com.sprsec.model.Enums.Gender;
import com.sprsec.model.Enums.MentalStatus;
import com.sprsec.model.Enums.RH;

import javax.persistence.*;
import java.util.Date;

@Entity
public class FirstLevelForm {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

//  @Temporal(TemporalType.DATE)
//  private Date dateOfBirth;

  private String firstName;

  private String lastName;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
//  @Enumerated(EnumType.STRING)
//  private Gender gender;
//
//  private int age;
//
//  @Enumerated(EnumType.STRING)
//  private MentalStatus mentalStatus;
//
//  @Enumerated(EnumType.STRING)
//  private RH rh;
}

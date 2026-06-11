package entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="users")
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String password;

    private String employeeId;

    private String name;

    private String email;

    private String contact;

    private String role;

    private String gender;

    private String dateOfBirth;

    private String qualification;

    private String specialization;

    private String experience;

    private String branch;

    private String designation;

    private String domain;

    private String addressLine1;

    private String addressLine2;

    private String city;

    private String state;

    private String pincode;

    private String joiningDate;

    private String emergencyContact;

    private String bloodGroup;

//    @Column(nullable = false)
    private Boolean profileCompleted=false;

}

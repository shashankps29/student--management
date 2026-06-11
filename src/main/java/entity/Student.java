package entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name="student")
@Getter
@Setter
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    private String name;

    @Column(unique = true)
    private String email;

    private String password;

//    private String confirmPassword;

    @Column(nullable = false)
    private boolean blocked = false;

    private String branch;

    private String section;

    private Long contact;

    private String addressLine1;

    private String addressLine2;

    private String gender;

    private String city;

    @Column(nullable = false)
    private boolean profileCompleted = false;

    private LocalDate dateOfBirth;

    private String state;

    private String pincode;

    private String course;

    private Double fees;

    private String fatherName;

    private Long fatherContact;

    private String motherName;

    private String fatherOccupation;

    private String motherOccupation;

    private String guardianName;

    private String guardianContact;

    private Long presentDays;

    private Long absentDays;


}

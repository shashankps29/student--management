package entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "notice")
@Getter
@Setter
public class Notice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String message;

    private LocalDateTime localDateTime;

//    public Long getId() {
//        return id;
//    }
//
//    public String getMessage() {
//        return message;
//    }
//
//    public void setLocalDateTime(LocalDateTime localDateTime) {
//        this.localDateTime = localDateTime;
//    }
//
//    public LocalDateTime getLocalDateTime() {
//        return localDateTime;
//    }
//
//    public void setMessage(String message) {
//        this.message = message;
//    }
}
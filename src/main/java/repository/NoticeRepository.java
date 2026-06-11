package repository;

import entity.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NoticeRepository extends JpaRepository<Notice, Long> {

    List<Notice> findTop3ByOrderByIdDesc();


    List<Notice> findAllByOrderByLocalDateTimeDesc();

}
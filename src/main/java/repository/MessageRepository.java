package repository;

import entity.Message;
import entity.Notice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<Message,Long> {

    List<Message> findTop3ByOrderByIdDesc();
}

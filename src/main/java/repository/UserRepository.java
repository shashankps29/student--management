package repository;

import entity.User;

import org.springframework.data.jpa.repository
        .JpaRepository;

import java.util.Optional;

public interface UserRepository
        extends JpaRepository<User,Integer> {

    User findByEmailAndPassword(
            String email,
            String password
    );
    User findByEmail(String email);

    Optional<Object> findById(Long id);
}
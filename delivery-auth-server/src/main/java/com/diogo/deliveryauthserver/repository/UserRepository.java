package com.diogo.deliveryauthserver.repository;

import com.diogo.deliveryauthserver.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserRepository extends JpaRepository<Usuario, String> {

    @Query("SELECT u FROM Usuario u WHERE LOWER(u.username) = LOWER(:username)")
    Optional<Usuario> findByUsername(@Param("username") String username);

}

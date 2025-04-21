package com.agenciaviagens.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agenciaviagens.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    
}
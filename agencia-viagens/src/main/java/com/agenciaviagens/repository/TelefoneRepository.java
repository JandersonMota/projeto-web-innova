package com.agenciaviagens.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.agenciaviagens.model.Telefone;

public interface TelefoneRepository extends JpaRepository<Telefone, Long> { }

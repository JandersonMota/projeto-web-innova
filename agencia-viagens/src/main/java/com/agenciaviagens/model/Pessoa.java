package com.agenciaviagens.model;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@MappedSuperclass
public abstract class Pessoa {

    @NotNull
    @Size(min = 3, max = 255)
    @Column(name = "nome")
    private String nome;

    @NotNull
    @Column(name = "email", unique = true)
    private String email;

}

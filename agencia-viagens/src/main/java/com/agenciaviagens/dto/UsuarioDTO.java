package com.agenciaviagens.dto;

import java.util.List;

import com.agenciaviagens.model.Usuario;

import lombok.Data;

@Data
public class UsuarioDTO {

    public List<Usuario> usuarios;
    private List<String> telefones;
    private List<String> tipoTelefones;

}
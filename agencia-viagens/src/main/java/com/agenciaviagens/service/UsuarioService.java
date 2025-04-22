package com.agenciaviagens.service;

import java.util.List;

import com.agenciaviagens.model.Usuario;

public interface UsuarioService {

    public void save(Usuario usuario);

    public void remove(Long id);

    public Object findById(Long idUsuario);

    List<Usuario> findAll();
    
}

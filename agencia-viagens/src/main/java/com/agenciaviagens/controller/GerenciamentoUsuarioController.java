package com.agenciaviagens.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exibir-usuario")
public class GerenciamentoUsuarioController {
    
    @GetMapping("/buscar")
    public String buscarUsuario() {
        //log.info("Carregando página com usuario");
        return "gerenciamento-usuario";
    }

}

package com.agenciaviagens.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.agenciaviagens.model.Usuario;
import com.agenciaviagens.service.UsuarioService;

import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

    //@Autowired
    private UsuarioService usuarioService;
    
    /*
    @PostMapping("/criado")
    public String salvarUsuario(@Valid Usuario usuario) {
        log.info("Usuário {} enviado", usuario);
        return "redirect:/usuario";
    }
    */

    @PostMapping("/criado")
    public ModelAndView criarUsuario(@Valid @ModelAttribute Usuario usuario, BindingResult bindingResult) {
        var model = new ModelAndView();

        if (bindingResult.hasErrors()) {
            List<String> errors = bindingResult
                    .getFieldErrors()
                    .stream()
                    .map(f -> "%s: %s".formatted(f.getField(), f.getDefaultMessage()))
                    .toList();

            model.addObject("user", usuario);
            model.addObject("errors", errors);
            model.setViewName("cadastro-usuario");
            return model;
        }

        usuarioService.save(usuario);
        model.setViewName("redirect:/");
        return model;
    }

    /*
    @GetMapping("/cadastro")
    public String formularioUsuario() {
        //log.info("Carregando página do formulario");
        return "cadastro-usuario";
    }
    */

    @GetMapping("/cadastro")
    public ModelAndView buscarUsuario() {
        var model = new ModelAndView();
        model.setViewName("cadastro");
        model.addObject("usuario", new Usuario());
        return model;
    }

    /*
    @GetMapping("/id/{idUsuario}")
    public String buscarUsuarioId(@PathVariable Long idUsuario) {
        return "redirect:/usuario";
    }
    */

    @GetMapping("/id/{idUsuario}")
    public ModelAndView buscarUsuarioId(@PathVariable Long idUsuario) {
        var model = new ModelAndView("detalhes-usuario");
        var usuario = usuarioService.findById(idUsuario); // supondo que exista esse método
        model.addObject("usuario", usuario);
        return model;
    }

    @GetMapping("/delete/{id}")
    public String deletar(@PathVariable("id") Long id) {
        usuarioService.remove(id);
        return "redirect:/";
    }
    
}

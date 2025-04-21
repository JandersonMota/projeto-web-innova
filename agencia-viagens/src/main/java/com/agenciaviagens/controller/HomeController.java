package com.agenciaviagens.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping
    public String home(Model model) {

        model.addAttribute("nome", "Janderson");
        model.addAttribute("items", List.of("A", "B", "C"));

        return "index"; // Nome do arquivo .jte (sem a extensão)
    }
}
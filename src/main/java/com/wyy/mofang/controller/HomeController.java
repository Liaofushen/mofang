package com.wyy.mofang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping({"/home", "/index"})
    public String index() {
        return "index";
    }

    @GetMapping({"/info"})
    public String info() {
        return "info";
    }

    @GetMapping({"/info2"})
    public String info2() {
        return "info2";
    }

    @GetMapping({"/about"})
    public String about() {
        return "about";
    }

}

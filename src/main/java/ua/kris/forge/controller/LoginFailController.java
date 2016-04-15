package ua.kris.forge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginFailController {
    @RequestMapping(value = "LoginFail", method = RequestMethod.GET)
    public String LoginFail() {

        return "loginfail";
    }
}
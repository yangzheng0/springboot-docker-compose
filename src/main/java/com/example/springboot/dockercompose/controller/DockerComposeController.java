package com.example.springboot.dockercompose.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Gjing
 **/
@RestController
public class DockerComposeController {

    @PostMapping("/test")
    public String test() {
        return "ok";
    }
}

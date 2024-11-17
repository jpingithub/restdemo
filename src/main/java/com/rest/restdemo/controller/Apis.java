package com.rest.restdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("v1/api/products")
public class Apis {

    @GetMapping
    public String getAllProducts(){
        return "{\nThese are all the files\n}";
    }
}

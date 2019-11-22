package com.rob.social.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PagesController {

  @GetMapping("/")
  public String spaRoutes() {
    return "../static/build/index";
  }

}

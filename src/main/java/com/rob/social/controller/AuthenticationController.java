package com.rob.social.controller;

import com.rob.social.dto.UserResponseDTO;
import com.rob.social.services.AuthenticationService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/authenticate")
public class AuthenticationController {
  private AuthenticationService authenticationService;

  public AuthenticationController(AuthenticationService authenticationService) {
    this.authenticationService = authenticationService;
  }

  @PostMapping("/login")
  public UserResponseDTO login() {
    return authenticationService.handleLogin();
  }
}

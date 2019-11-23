package com.rob.social.controller;

import com.rob.social.dto.LoginDTO;
import com.rob.social.dto.RegisterUserDTO;
import com.rob.social.dto.UserResponseDTO;
import com.rob.social.services.AuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/authenticate")
public class AuthenticationController {
  private AuthenticationService authenticationService;

  @Autowired
  public AuthenticationController(AuthenticationService authenticationService) {
    this.authenticationService = authenticationService;
  }

  @PostMapping("/login")
  public UserResponseDTO login(@RequestBody LoginDTO loginDTO) {
    System.out.println(loginDTO.getUsername());
    return authenticationService.handleLogin();
  }

  @PostMapping("/register")
  public UserResponseDTO register(@RequestBody RegisterUserDTO registerUserDTO) {
    return authenticationService.handleRegister();
  }
}

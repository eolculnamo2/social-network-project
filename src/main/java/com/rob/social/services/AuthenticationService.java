package com.rob.social.services;

import com.rob.social.dto.UserResponseDTO;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

  public UserResponseDTO handleLogin() {
    // dummy data for now
    UserResponseDTO dto = new UserResponseDTO();
    dto.setUsername("RobUser123");
    return dto;
  }
}

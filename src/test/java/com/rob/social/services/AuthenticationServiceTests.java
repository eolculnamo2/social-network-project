package com.rob.social.services;

import com.rob.social.dto.UserResponseDTO;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
public class AuthenticationServiceTests {
  AuthenticationService authenticationService = null;

  @BeforeEach
  public void setup() {
    authenticationService = new AuthenticationService();
  }

  @Test
  public void handleLoginReturnsCorrectDTO() {
    UserResponseDTO userResponseDTO = authenticationService.handleLogin();
    assertEquals(userResponseDTO.getUsername(), "RobUser123");
  }

}

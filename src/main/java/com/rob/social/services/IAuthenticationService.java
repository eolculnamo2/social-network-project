package com.rob.social.services;

import com.rob.social.dto.UserResponseDTO;

public interface IAuthenticationService {
  UserResponseDTO handleLogin();
  UserResponseDTO handleRegister();
}

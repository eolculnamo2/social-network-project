package com.rob.social.services;

import com.rob.social.dto.RegisterUserDTO;
import com.rob.social.dto.UserResponseDTO;
import com.rob.social.entity.User;

public interface IAuthenticationService {
  User handleRegister(RegisterUserDTO registerUserDTO);
}

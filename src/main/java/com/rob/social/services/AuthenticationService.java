package com.rob.social.services;

import com.rob.social.dao.AuthenticationDAO;
import com.rob.social.dto.LoginDTO;
import com.rob.social.dto.RegisterUserDTO;
import com.rob.social.dto.UserResponseDTO;
import com.rob.social.entity.User;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService implements IAuthenticationService {
  private AuthenticationDAO authenticationDAO;

  public AuthenticationService(AuthenticationDAO authenticationDAO) {
    this.authenticationDAO = authenticationDAO;
  }

  public User handleRegister(RegisterUserDTO registerUserDTO) {
    if(!registerUserDTO.getPassword().equals(registerUserDTO.getConfirmPassword()) || registerUserDTO == null) {
      return null;
    }

    User user = new User(registerUserDTO.getUsername(), registerUserDTO.getPassword(), registerUserDTO.getEmail(), "", "", "");
    authenticationDAO.createOrUpdateUser(user);
    return user;
  }
}

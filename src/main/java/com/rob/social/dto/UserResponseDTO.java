package com.rob.social.dto;

import java.io.Serializable;

public class UserResponseDTO implements Serializable {
  private String username;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }
}

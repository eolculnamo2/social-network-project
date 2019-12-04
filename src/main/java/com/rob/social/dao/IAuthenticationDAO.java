package com.rob.social.dao;

import com.rob.social.entity.User;

public interface IAuthenticationDAO {
  User getUserByUsername(String username);
  void createOrUpdateUser(User user);
}

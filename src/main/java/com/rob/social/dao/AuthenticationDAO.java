package com.rob.social.dao;

import com.rob.social.entity.User;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;

@Repository
public class AuthenticationDAO implements IAuthenticationDAO {
  private EntityManager entityManager;

  public AuthenticationDAO(EntityManager entityManager) {
    this.entityManager = entityManager;
  }

  @Override
  @Transactional
  public void createOrUpdateUser(User user) {
    Session currentSession = entityManager.unwrap(Session.class);
    currentSession.saveOrUpdate(user);
  }

  @Override
  @Transactional
  public User getUserByUsername(String username) {
    Session session = entityManager.unwrap(Session.class);
    return session.get(User.class, username);
  }
}

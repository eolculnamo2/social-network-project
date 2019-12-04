package com.rob.social.services;

import com.rob.social.dao.AuthenticationDAO;
import com.rob.social.entity.Post;
import com.rob.social.entity.User;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Service
public class PostsService implements IPostsService {

  private AuthenticationDAO authenticationDAO;

  public PostsService(AuthenticationDAO authenticationDAO) {
    this.authenticationDAO = authenticationDAO;
  }

  public List<Post> loadPosts(String username) {
    User user = authenticationDAO.getUserByUsername(username);
    return user.getPosts();
  }

  public void addPost(String username) {
    User user = authenticationDAO.getUserByUsername(username);
    Post post = new Post("12/3/2019", "This is the content of the test post.");
    user.addPost(post);
    authenticationDAO.createOrUpdateUser(user);
  }
}

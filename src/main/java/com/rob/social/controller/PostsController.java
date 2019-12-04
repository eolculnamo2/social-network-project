package com.rob.social.controller;

import com.rob.social.dao.AuthenticationDAO;
import com.rob.social.entity.Post;
import com.rob.social.services.PostsService;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/posts")
public class PostsController {
  private PostsService postsService;

  public PostsController(PostsService postsService) {
    this.postsService = postsService;
  }

  @GetMapping("/")
  public List<Post> loadPost(Authentication authentication) {
    return postsService.loadPosts(authentication.getName());
  }

  @PostMapping("/add-post")
  public void addPost(Authentication authentication) {
    postsService.addPost(authentication.getName());
  }
}

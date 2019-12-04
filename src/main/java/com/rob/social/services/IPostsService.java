package com.rob.social.services;

import com.rob.social.entity.Post;

import java.util.List;

public interface IPostsService {
  List<Post> loadPosts(String username);
  void addPost(String username);
}

package com.rob.social.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users")
@SecondaryTable(name = "authorities")
public class User {
  @Id
  @Column(name = "username")
  private String username;

  @Column(name = "password")
  @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
  private String password;

  @Column(name = "email")
  private String email;

  @Column(name = "first_name")
  private String firstName;

  @Column(name = "last_name")
  private String lastName;

  @Column(name = "photo")
  private String photo;

  @Column(name = "enabled")
  private int enabled;

  @Column(table = "authorities")
  private String authority;

  @OneToMany(mappedBy="owner", cascade={CascadeType.ALL})
  @JsonManagedReference
  private List<Conversation> conversations;

  @OneToMany(mappedBy="user", cascade={CascadeType.ALL})
  @JsonManagedReference
  private List<Friend> friends;

  @OneToMany(mappedBy="author", cascade={CascadeType.ALL})
  @JsonManagedReference
  private List<Post> posts;

  public User() {}

  public User(String username, String password, String email, String firstName, String lastName, String photo) {
    this.username = username;
    this.password = password;
    this.email = email;
    this.firstName = firstName;
    this.lastName = lastName;
    this.photo = photo;
  }

  public void addPost(Post post) {
    if(posts == null) {
      posts = new ArrayList<>();
    }
    posts.add(post);
    post.setAuthor(this);
  }

  public void addFriend(Friend friend) {
    if(friends == null) {
      friends = new ArrayList<>();
    }
    friends.add(friend);
    friend.setUser(this);
  }

  public void addConversation(Conversation conversation) {
    if(conversations == null) {
      conversations = new ArrayList<>();
    }
    conversations.add(conversation);
    conversation.setOwner(this);
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
  }

  public int getEnabled() {
    return enabled;
  }

  public void setEnabled(int enabled) {
    this.enabled = enabled;
  }

  public String getAuthority() {
    return authority;
  }

  public void setAuthority(String authority) {
    this.authority = authority;
  }

  public List<Conversation> getConversations() {
    return conversations;
  }

  public void setConversations(List<Conversation> conversations) {
    this.conversations = conversations;
  }

  public List<Friend> getFriends() {
    return friends;
  }

  public void setFriends(List<Friend> friends) {
    this.friends = friends;
  }

  public List<Post> getPosts() {
    return posts;
  }

  public void setPosts(List<Post> posts) {
    this.posts = posts;
  }
}

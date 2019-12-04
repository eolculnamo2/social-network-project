package com.rob.social.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "post")
public class Post {
  @Id
  @Column(name = "id")
  private int Id;

  @Column(name = "date")
  private String date;

  @Column(name = "content")
  private String content;

  @Column(name = "likes")
  private int likes;

  @ManyToOne
  @JoinColumn(name = "user_key")
  @JsonBackReference
  private User author;

  public Post() { }

  public Post(String date, String content) {
    this.date = date;
    this.content = content;
    this.likes = 0;
  }

  public int getId() {
    return Id;
  }

  public void setId(int id) {
    Id = id;
  }

  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public int getLikes() {
    return likes;
  }

  public void setLikes(int likes) {
    this.likes = likes;
  }

  public User getAuthor() {
    return author;
  }

  public void setAuthor(User author) {
    this.author = author;
  }
}

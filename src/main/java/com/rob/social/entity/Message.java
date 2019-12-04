package com.rob.social.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "message")
public class Message {
  @Id
  @Column(name = "id")
  private int Id;

  @Column(name = "date")
  private String date;

  @Column(name = "username")
  private String username;

  @Column(name = "message")
  private String message;

  @ManyToOne
  @JoinColumn(name = "conversation_key")
  @JsonBackReference
  private Conversation conversation;

  public Message() {}

  public Message(String date, String username, String message) {
    this.date = date;
    this.username = username;
    this.message = message;
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

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public Conversation getConversation() {
    return conversation;
  }

  public void setConversation(Conversation conversation) {
    this.conversation = conversation;
  }
}

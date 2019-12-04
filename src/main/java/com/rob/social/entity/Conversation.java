package com.rob.social.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "conversation")
public class Conversation {
  @Id
  @Column(name = "id")
  private int Id;

  @Column(name = "user_one")
  private String userOne;

  @Column(name = "user_two")
  private String userTwo;

  @OneToMany(mappedBy="conversation", cascade={CascadeType.ALL})
  @JsonManagedReference
  private List<Message> messages;

  @ManyToOne
  @JoinColumn(name = "user_key")
  @JsonBackReference
  private User owner;

  public Conversation() {}

  public Conversation(String userOne, String userTwo) {
    this.userOne = userOne;
    this.userTwo = userTwo;
  }

  public void addMessage(Message message) {
    if(messages == null) {
      messages = new ArrayList<>();
    }
    messages.add(message);
    message.setConversation(this);
  }

  public int getId() {
    return Id;
  }

  public void setId(int id) {
    Id = id;
  }

  public String getUserOne() {
    return userOne;
  }

  public void setUserOne(String userOne) {
    this.userOne = userOne;
  }

  public String getUserTwo() {
    return userTwo;
  }

  public void setUserTwo(String userTwo) {
    this.userTwo = userTwo;
  }

  public List<Message> getMessages() {
    return messages;
  }

  public void setMessages(List<Message> messages) {
    this.messages = messages;
  }

  public User getOwner() {
    return owner;
  }

  public void setOwner(User owner) {
    this.owner = owner;
  }
}

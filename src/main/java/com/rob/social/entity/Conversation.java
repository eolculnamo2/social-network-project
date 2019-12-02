package com.rob.social.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

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

  public Conversation() {}

  public Conversation(String userOne, String userTwo) {
    this.userOne = userOne;
    this.userTwo = userTwo;
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
}

import 'package:templates/src/objects/Comment.dart';

class Post {
  String postText;
  String date;
  String owner;
  List<Comment> comments;
  int likes;

  Post(String postText, String date, String owner, List<Comment> comments, int likes) {
    this.postText = postText;
    this.date = date;
    this.owner = owner;
    this.comments = comments;
    this.likes = likes;
  }
}

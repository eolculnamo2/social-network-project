import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/objects/Comment.dart';

@Component(selector: 'post', styleUrls: ['post_component.css'], templateUrl: 'post_component.html')
class PostComponent {
  String postText;
  String date;
  String owner;
  List<Comment> comments;
  int likes;
}

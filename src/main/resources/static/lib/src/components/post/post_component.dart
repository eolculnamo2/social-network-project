import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/objects/Comment.dart';

@Component(
    selector: 'post-component',
    styleUrls: ['post_component.css'],
    templateUrl: 'post_component.html',
    directives: [MaterialExpansionPanel, materialInputDirectives, coreDirectives, NgIf],
    providers: [materialProviders])
class PostComponent {
  @Input()
  String postText;
  @Input()
  String date;
  @Input()
  String owner;
  @Input()
  List<Comment> comments;
  @Input()
  int likes;

  bool showComments = false;

  void toggleShowComments() {
    showComments = !showComments;
  }
}

import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/services/post_service.dart';

@Component(
  selector: 'new-post',
  templateUrl: 'new_post_component.html',
  styleUrls: ['new_post_component.css'],
  directives: [
    MaterialInputComponent,
    MaterialButtonBase,
    MaterialButtonComponent,
    NgModel,
    formDirectives,
    materialInputDirectives,
    coreDirectives
  ],
  providers: [PostService]
)
class NewPostComponent {
  String postText = '';
  PostService _postService;

  NewPostComponent(PostService postService) {
    _postService = postService;
  }

  void submitNewPost() {
    print("Post submitted: ${postText}");
    _postService.savePost();
  }
}

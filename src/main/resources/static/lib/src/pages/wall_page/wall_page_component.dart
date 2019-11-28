import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:templates/src/components/new_post/new_post_component.dart';
import 'package:templates/src/components/post/post_component.dart';
import 'package:templates/src/objects/Post.dart';
import '../../routes.dart';

@Component(
  selector: 'wall-page',
  styleUrls: ['wall_page_component.css'],
  templateUrl: 'wall_page_component.html',
  directives: [coreDirectives, routerDirectives, RouterOutlet, NgFor, NewPostComponent, PostComponent],
  exports: [RoutePaths, Routes],
)
class WallPageComponent {
  List<Post> items = [
    Post("Lorem ipsum dolor", "12/2/2019", "Joe", [], 3),
    Post("Lorem ipsum dolor", "12/2/2019", "Joe", [], 3),
    Post("Lorem ipsum dolor", "12/2/2019", "Joe", [], 3),
    Post("Lorem ipsum dolor", "12/2/2019", "Joe", [], 3),
  ];
}

import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:templates/src/components/new_post/new_post_component.dart';
import '../../routes.dart';

@Component(
  selector: 'wall-page',
  styleUrls: ['wall_page_component.css'],
  templateUrl: 'wall_page_component.html',
  directives: [coreDirectives, routerDirectives, RouterOutlet, NgFor, NewPostComponent],
  exports: [RoutePaths, Routes],
)
class WallPageComponent {
  List<String> items = [];
}

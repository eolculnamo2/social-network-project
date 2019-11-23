import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../../routes.dart';

@Component(
  selector: 'wall-page',
  styleUrls: ['wall_page_component.css'],
  templateUrl: 'wall_page_component.html',
  directives: [coreDirectives, routerDirectives, RouterOutlet, NgFor],
  exports: [RoutePaths, Routes],
)
class WallPageComponent {
  List<String> items = [];
}

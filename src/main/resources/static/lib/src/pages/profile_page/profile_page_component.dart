import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../../routes.dart';

@Component(
  selector: 'profile-page',
  styleUrls: ['profile_page_component.css'],
  templateUrl: 'profile_page_component.html',
  directives: [coreDirectives, routerDirectives, RouterOutlet],
  exports: [RoutePaths, Routes],
)
class ProfilePageComponent {}

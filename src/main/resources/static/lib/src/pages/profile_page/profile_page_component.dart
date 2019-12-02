import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:templates/src/store/user_store.dart';
import '../../routes.dart';

@Component(
  selector: 'profile-page',
  styleUrls: ['profile_page_component.css'],
  templateUrl: 'profile_page_component.html',
  directives: [coreDirectives, routerDirectives, RouterOutlet],
  exports: [RoutePaths, Routes],
  providers: [UserStore],
)
class ProfilePageComponent {
  UserStore _userStore;
  String username;

  ProfilePageComponent(UserStore userStore) {
    _userStore = userStore;
    _userStore.setUsername("Robert!");
    username = _userStore.getUsername();
  }
}

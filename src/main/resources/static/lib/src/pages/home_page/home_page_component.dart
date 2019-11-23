import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:templates/src/components/register/register_component.dart';
import '../../components/login/login_component.dart';
import '../../routes.dart';

@Component(
  selector: 'home-page',
  templateUrl: 'home_page_component.html',
  styleUrls: ['home_page_component.css'],
  directives: [coreDirectives, routerDirectives, RouterOutlet, LoginComponent, RegisterComponent],
  // providers: [
  //   ClassProvider(DialogService),
  // ],
  exports: [RoutePaths, Routes],
)
class HomePageComponent {
  bool showLogin = true;

  void toggleLogin(bool goToLogin) {
    showLogin = goToLogin;
  }
}

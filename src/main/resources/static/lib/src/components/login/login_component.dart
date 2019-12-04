import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/objects/LoginBody.dart';
import 'package:templates/src/services/auth_service.dart';
import 'package:templates/src/store/user_store.dart';

@Component(
    selector: 'login-form',
    templateUrl: 'login_component.html',
    styleUrls: ['login_component.css'],
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives],
    providers: [UserStore, AuthService])
class LoginComponent {
  String username = '';
  String password = '';
  UserStore _userStore;
  AuthService _authService;

  // https://angulardart.dev/guide/template-syntax#custom-events
  final goToRegisterStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToRegister => goToRegisterStream.stream;

  LoginComponent(UserStore userStore, AuthService authService) {
    _userStore = userStore;
    _authService = authService;
  }

  void login() {
    if (username.length == 0 || password.length == 0) {
      print("username and password required");
      return;
    }
    _authService.login(LoginBody(username, password));
  }

  void register() => goToRegisterStream.add(false);
}

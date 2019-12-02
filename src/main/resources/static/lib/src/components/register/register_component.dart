import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/objects/RegisterBody.dart';
import 'package:templates/src/services/auth_service.dart';
import 'package:templates/src/store/user_store.dart';

@Component(
    selector: 'register-form',
    styleUrls: ['../login/login_component.css'],
    templateUrl: 'register_component.html',
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives],
    providers: [UserStore, AuthService])
class RegisterComponent {
  String username;
  String email;
  String password;
  String confirmPassword;
  UserStore _userStore;
  AuthService _authService;

  final goToLoginStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToLogin => goToLoginStream.stream;

  RegisterComponent(UserStore userStore, AuthService authService) {
    _userStore = userStore;
    _authService = authService;
  }

  void register() async {
    String user = await _authService.register(RegisterBody(username, email, password, confirmPassword));

    if (user != null) {
      _userStore.setUsername(user);
      print(_userStore.getUsername());
      return;
    }

    // TODO add modal
    print("Something went wrong with your user registration");
  }

  void returnToLogin() {
    goToLoginStream.add(true);
  }
}

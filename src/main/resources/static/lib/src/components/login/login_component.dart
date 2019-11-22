import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/dto/user_response_dto.dart';
import 'package:templates/src/store/user_store.dart';

@Component(
    selector: 'login-form',
    templateUrl: 'login_component.html',
    styleUrls: ['login_component.css'],
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives],
    providers: [UserStore])
class LoginComponent {
  String username;
  String password;
  UserStore _userStore;

  // https://angulardart.dev/guide/template-syntax#custom-events
  final goToRegisterStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToRegister => goToRegisterStream.stream;

  LoginComponent(UserStore userStore) {
    this._userStore = userStore;
  }

  void login() async {
    var payload = {username: username, password: password};
    var res = await http.post("/authenticate/login", body: payload);
    UserResponseDTO resJson = json.decode(res.body);
    _userStore.setUsername(resJson.username);
  }

  void register() {
    goToRegisterStream.add(false);
  }
}

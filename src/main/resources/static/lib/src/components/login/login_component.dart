import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
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
  UserStore userStore;

  // https://angulardart.dev/guide/template-syntax#custom-events
  final goToRegisterStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToRegister => goToRegisterStream.stream;

  LoginComponent(UserStore userStore) {
    this.userStore = userStore;
  }

  void login() async {
    print("payload before");
    var payload = {"username": username, "password": password};
    var res = await http.post("/authenticate/login", headers: {"Accept": "application/json"}, body: payload);
    var resJson = json.decode(res.body);
    userStore.username = resJson["username"];
  }

  void register() => goToRegisterStream.add(false);
}

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:templates/src/store/user_store.dart';

@Component(
    selector: 'register-form',
    styleUrls: ['../login/login_component.css'],
    templateUrl: 'register_component.html',
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives],
    providers: [UserStore])
class RegisterComponent {
  String username;
  String password;
  String confirmPassword;
  UserStore _userStore;

  final goToLoginStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToLogin => goToLoginStream.stream;

  RegisterComponent(UserStore userStore) {
    this._userStore = userStore;
  }

  void register() async {
    print('register callled');

    var res = await http.post('/authenticate/register',
        body: json.encode({
          'username': username,
          'password': password,
          'confirmPassword': confirmPassword,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
    var resJson = json.decode(res.body);
    _userStore.setUsername(resJson['username']);

    print(_userStore.getUsername());
  }

  void returnToLogin() {
    goToLoginStream.add(true);
  }
}

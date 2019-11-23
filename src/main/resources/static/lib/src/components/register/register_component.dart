import 'dart:async';
import "dart:html";
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

  void register() {
    print('register callled');
    print(_userStore.username);
  }

  void returnToLogin() {
    goToLoginStream.add(true);
  }
}

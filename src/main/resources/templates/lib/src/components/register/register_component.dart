import 'dart:async';
import "dart:html";
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'register-form',
    styleUrls: ['../login/login_component.css'],
    templateUrl: 'register_component.html',
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives])
class RegisterComponent {
  String username;
  String password;
  String confirmPassword;

  final goToLoginStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToLogin => goToLoginStream.stream;

  void register() {
    print('register callled');
  }

  void returnToLogin() {
    goToLoginStream.add(true);
  }
}

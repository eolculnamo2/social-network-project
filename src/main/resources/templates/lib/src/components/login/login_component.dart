import 'dart:async';
import "dart:html";
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'login-form',
    templateUrl: 'login_component.html',
    styleUrls: ['login_component.css'],
    directives: [MaterialInputComponent, MaterialButtonBase, MaterialButtonComponent, materialInputDirectives])
class LoginComponent {
  String username;
  String password;

  // https://angulardart.dev/guide/template-syntax#custom-events
  final goToRegisterStream = StreamController<bool>();
  @Output()
  Stream<bool> get goToRegister => goToRegisterStream.stream;

  void login() async {
    var payload = {username: username, password: password};
    var res = await HttpRequest.postFormData("/authentication/credentials", payload);
  }

  void register() {
    goToRegisterStream.add(false);
  }
}

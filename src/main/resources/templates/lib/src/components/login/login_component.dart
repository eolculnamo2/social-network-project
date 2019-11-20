import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'login-form',
  templateUrl: 'login_component.html',
  styleUrls: ['login_component.css'],
  directives: [
    MaterialInputComponent,
    materialInputDirectives
    ]
)
class LoginComponent {
  String username;
  String password;
}
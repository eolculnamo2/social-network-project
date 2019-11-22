import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/components/header/header_component.dart';

import 'src/routes.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives, HeaderComponent],
  exports: [RoutePaths, Routes],
)
class AppComponent {}

// ANGULAR NOTES:

// Directives:
// a directive is a function that executes whenever the Angular compiler finds it in the DOM.
// PROVIDERS
// A provider is an instruction to the Dependency Injection system on how to obtain a value for a dependency.

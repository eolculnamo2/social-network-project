import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}

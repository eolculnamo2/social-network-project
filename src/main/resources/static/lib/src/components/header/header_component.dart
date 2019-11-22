import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'app-header',
  styleUrls: ['header_component.css'],
  templateUrl: 'header_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialMenuComponent,
    materialInputDirectives,
  ]
)
class HeaderComponent {}

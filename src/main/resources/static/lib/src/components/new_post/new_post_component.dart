import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'new-post',
  templateUrl: 'new_post_component.html',
  styleUrls: ['new_post_component.css'],
  directives: [
    MaterialInputComponent,
    MaterialButtonBase,
    MaterialButtonComponent,
    NgModel,
    formDirectives,
    materialInputDirectives,
    coreDirectives
  ],
)
class NewPostComponent {
  String postText = '';
}

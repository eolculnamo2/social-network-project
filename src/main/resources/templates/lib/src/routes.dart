import 'package:angular_router/angular_router.dart';
import 'pages/home_page/home_page_component.template.dart' as home_page;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_page.HomePageComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.home.toUrl(),
    )
    // RouteDefinition(
    //   path: '.*',
    //   component: not_found_template.NotFoundComponentNgFactory,
    // ),
  ];
}

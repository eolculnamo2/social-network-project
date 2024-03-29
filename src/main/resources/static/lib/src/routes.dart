import 'package:angular_router/angular_router.dart';
import 'pages/home_page/home_page_component.template.dart' as home_page;
import 'pages/wall_page/wall_page_component.template.dart' as wall_page;
import 'pages/profile_page/profile_page_component.template.dart' as profile_page;
import 'route_paths.dart';

export 'route_paths.dart';

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_page.HomePageComponentNgFactory,
  );

  static final wall = RouteDefinition(
    routePath: RoutePaths.wall,
    component: wall_page.WallPageComponentNgFactory,
  );

  static final profile = RouteDefinition(
    routePath: RoutePaths.profile,
    component: profile_page.ProfilePageComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    wall,
    profile,
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

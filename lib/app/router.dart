import 'package:auto_route/auto_route.dart';
import 'package:state/ui/views/startup/startup_view.dart';

import '../ui/views/home/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: StartupView, initial: true),
    AutoRoute(page: HomeView, initial: false),
  ],
)
class $AppRouter {
  // This class is generated.

}

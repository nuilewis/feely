import 'package:auto_route/auto_route.dart';


@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: route.HomeScreen.page, path: HomeScreen.path),
    // AutoRoute(page: route.RegisterScreen.page, path: RegisterScreen.path),
    // AutoRoute(page: route.SignInScreen.page, path: SignInScreen.path),

  ];
}

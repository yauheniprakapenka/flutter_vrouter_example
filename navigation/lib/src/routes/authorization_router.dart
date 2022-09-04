part of '../app_router.dart';

class AuthorizationRouter {
  static const String authorizationScreenPath = '/authorization';

  static VRouteElement buildRoute() {
    return VWidget(
      path: authorizationScreenPath,
      widget: const AuthorizationScreen(),
    );
  }
}

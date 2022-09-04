part of '../app_router.dart';

class HomeRouter {
  static const String homeScreenPath = '/home-screen';

  static VRouteElement buildRoute() {
    return VWidget(
      path: homeScreenPath,
      widget: const HomeScreen(),
    );
  }
}

part of '../app_router.dart';

class CatalogRouter {
  static const String detailsScreenPath = 'details';
  static const String catalogScreenPath = '/catalog';

  static const String detailsScreenPriceParam = 'price';
  static const String detailsScreenTitleParam = 'title';

  static VRouteElement buildRoute() {
    return VWidget(
      path: catalogScreenPath,
      widget: const CatalogScreen(),
      stackedRoutes: [
        VWidget(
          path: detailsScreenPath,
          widget: const DetailsScreen(),
        ),
        SettingsRouter.buildRoute(),
      ],
    );
  }
}

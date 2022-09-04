import 'package:authorization/authorization.dart';
import 'package:catalog/catalog.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:settings/settings.dart';
import 'package:vrouter/vrouter.dart';

part 'routes/catalog_router.dart';
part 'routes/authorization_router.dart';
part 'routes/settings_router.dart';
part 'routes/home_router.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return VRouter(
      debugShowCheckedModeBanner: false,
      initialUrl: HomeRouter.homeScreenPath,
      routes: [
        HomeRouter.buildRoute(),
        AuthorizationRouter.buildRoute(),
        CatalogRouter.buildRoute(),
      ],
    );
  }
}

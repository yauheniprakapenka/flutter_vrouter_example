import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: SharedPreferenceProvider.checkIsAuthorized(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ignore: avoid-non-null-assertion
            final bool isAuthorized = snapshot.data!;
            final String path = isAuthorized
                ? CatalogRouter.catalogScreenPath
                : AuthorizationRouter.authorizationScreenPath;
            context.vRouter.to(path);
            SharedPreferenceProvider.setToAuthorized();
          }
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login screen'),
            TextButton(
              onPressed: () {
                context.vRouter.to(CatalogRouter.catalogScreenPath);
              },
              child: const Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class AudioSettingsSecondScreen extends StatelessWidget {
  const AudioSettingsSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('A2'),
            TextButton(
              onPressed: () {
                context.vRouter.to(SettingsRouter.audioSettingsThirdScreenPath);
              },
              child: const Text('Go to A3'),
            ),
            TextButton(
              onPressed: () {
                context.vRouter.to(AuthorizationRouter.authorizationScreenPath);
              },
              child: const Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}

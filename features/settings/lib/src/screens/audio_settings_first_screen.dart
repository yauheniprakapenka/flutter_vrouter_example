import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class AudioSettingsFirstScreen extends StatelessWidget {
  const AudioSettingsFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('A1'),
            TextButton(
              onPressed: () {
                context.vRouter.to(SettingsRouter.audioSettingsSecondScreenPath);
              },
              child: const Text('Go to A2'),
            ),
            TextButton(
              onPressed: () {
                context.vRouter.to(CatalogRouter.catalogScreenPath);
              },
              child: const Text('Back to catalog'),
            ),
          ],
        ),
      ),
    );
  }
}

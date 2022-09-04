import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class AudioSettingsThirdScreen extends StatelessWidget {
  const AudioSettingsThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('A3'),
            TextButton(
              onPressed: () {
                context.vRouter.to(SettingsRouter.audioSettingsFirstScreenPath);
              },
              child: const Text('Back to A1'),
            ),
          ],
        ),
      ),
    );
  }
}

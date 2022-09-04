import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class VideoSettingsFirstScreen extends StatelessWidget {
  const VideoSettingsFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> historyState = context.vRouter.historyState;
    final String? name = historyState[SettingsRouter.videoSettingsSecondScreenNameParam];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('B1'),
            TextButton(
              onPressed: () {
                context.vRouter.to(SettingsRouter.videoSettingsSecondScreenPath);
              },
              child: const Text('Go to B2'),
            ),
            name == null
                ? const SizedBox()
                : Text(
                    'Passed name from B2: $name',
                    style: const TextStyle(color: Colors.pink),
                  ),
            TextButton(
              onPressed: () {
                SharedPreferenceProvider.setToNotAuthorized();
                context.vRouter.to(AuthorizationRouter.authorizationScreenPath);
              },
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}

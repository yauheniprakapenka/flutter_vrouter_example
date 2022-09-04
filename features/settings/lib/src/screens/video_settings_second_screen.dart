import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class VideoSettingsSecondScreen extends StatelessWidget {
  static const String _name = 'Alisa';

  const VideoSettingsSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('B1'),
            TextButton(
              onPressed: () {
                const Map<String, String> queryParameters = {
                  SettingsRouter.videoSettingsSecondScreenNameParam: _name,
                };
                context.vRouter.pop(newHistoryState: queryParameters);
              },
              child: const Text('Back to B1 with passing name $_name'),
            ),
          ],
        ),
      ),
    );
  }
}

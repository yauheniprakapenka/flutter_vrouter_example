part of '../app_router.dart';

class SettingsRouter {
  static const String audioSettingsFirstScreenPath = '/audio-settings-first';
  static const String audioSettingsSecondScreenPath = '/audio-settings-second';
  static const String audioSettingsThirdScreenPath = '/audio-settings-third';

  static const String videoSettingsFirstScreenPath = '/video-settings-first';
  static const String videoSettingsSecondScreenPath = '/video-settings-second';
  static const String videoSettingsSecondScreenNameParam = 'name';

  static VRouteElement buildRoute() {
    return VNester(
      path: SettingsRouter.audioSettingsFirstScreenPath,
      widgetBuilder: (Widget child) => SettingsHomeScreen(child: child),
      nestedRoutes: [
        VWidget(
          path: SettingsRouter.audioSettingsFirstScreenPath,
          widget: const AudioSettingsFirstScreen(),
          transitionDuration: Duration.zero,
          buildTransition: (_, __, child) {
            return child;
          },
          stackedRoutes: [
            VWidget(
              path: SettingsRouter.audioSettingsSecondScreenPath,
              widget: const AudioSettingsSecondScreen(),
              stackedRoutes: [
                VWidget(
                  path: SettingsRouter.audioSettingsThirdScreenPath,
                  widget: const AudioSettingsThirdScreen(),
                ),
              ],
            ),
          ],
        ),
        VWidget(
          path: videoSettingsFirstScreenPath,
          widget: const VideoSettingsFirstScreen(),
          transitionDuration: Duration.zero,
          buildTransition: (_, __, child) {
            return child;
          },
          stackedRoutes: [
            VWidget(
              path: videoSettingsSecondScreenPath,
              widget: const VideoSettingsSecondScreen(),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceProvider {
  static const String _isAuthorized = 'isAuthorized';

  static Future<bool> checkIsAuthorized() async {
    await Future.delayed(const Duration(seconds: 1));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isAuthorized) ?? false;
  }

  static Future<void> setToAuthorized() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isAuthorized, true);
  }

  static Future<void> setToNotAuthorized() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isAuthorized, false);
  }
}

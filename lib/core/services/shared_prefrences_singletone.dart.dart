import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(key, value) async {
    await _instance.setBool(key, value);
  }

  static getBool(key) {
    return _instance.getBool(key) ?? false;
  }

  static setString(key, val) async {
    await _instance.setString(key, val);
  }

  static getString(key) {
    return _instance.getString(key) ?? '';
  }
}

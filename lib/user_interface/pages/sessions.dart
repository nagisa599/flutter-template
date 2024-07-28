import 'package:shared_preferences/shared_preferences.dart';

Future<void> login() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool('isLoggedIn', true);
}

Future<void> logout() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool('isLoggedIn', false);
}

Future<bool> checkLoggedIn() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool('isLoggedIn') ?? false;
}

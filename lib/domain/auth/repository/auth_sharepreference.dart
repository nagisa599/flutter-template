import 'package:flutter_template/domain/auth/auth.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

const sharedPreferencesKey = "auth";

class SharedPreferencesAuthRepository implements AuthRepository<Auth> {
  @override
  Future<bool> registerAuth(Auth auth) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(
        sharedPreferencesKey, auth.toString());
  }

  @override
  Future<bool> deleteAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(sharedPreferencesKey);
  }

  @override
  Future<Auth> getAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(sharedPreferencesKey);
    if (authString == null) {
      throw Exception('Auth data not found in SharedPreferences');
    }
    return Auth.fromString(authString);
  }

  @override
  Future<bool> checkAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(sharedPreferencesKey);
    if (authString == null) {
      return false;
    }
    return true;
  }
}

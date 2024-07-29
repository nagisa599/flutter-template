import 'package:flutter_template/domain/auth/auth.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/user_interface/router/router.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SharedPreferencesKey = "auth";

class SharedPreferencesAuthRepository implements AuthRepository<Auth> {
  @override
  Future<bool> registerAuth(Auth auth) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    print("登録する時のauth");
    print(auth);
    return await sharedPreferences.setString(
        SharedPreferencesKey, auth.toString());
  }

  Future<bool> deleteAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(SharedPreferencesKey);
  }

  Future<Auth> getAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(SharedPreferencesKey);
    if (authString == null) {
      throw Exception('Auth data not found in SharedPreferences');
    }
    return Auth.fromString(authString);
  }

  Future<bool> checkAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(SharedPreferencesKey);
    if (authString == null) {
      return false;
    }
    return true;
  }
}

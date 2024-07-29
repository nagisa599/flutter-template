import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required String accessToken,
    required String refreshToken,
    required String idToken,
    required String tokenType,
    // required DateTime expiresIn,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  // JSON文字列からAuthオブジェクトを生成するファクトリメソッド
  static Auth fromString(String jsonString) {
    return Auth.fromJson(json.decode(jsonString) as Map<String, dynamic>);
  }

  // Auth0からのcredentialオブジェクトを受け取ってAuthインスタンスを生成するファクトリコンストラクタ
  factory Auth.fromAuth0Credentials(dynamic credential) {
    return Auth(
      accessToken: credential.accessToken as String,
      refreshToken: credential.refreshToken as String,
      idToken: credential.idToken as String,
      tokenType: credential.tokenType as String,
      // expiresIn:
      //     DateTime.now().add(Duration(seconds: credential.expiresIn as int)),
    );
  }
}

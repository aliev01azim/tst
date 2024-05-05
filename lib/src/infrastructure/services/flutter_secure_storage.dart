// Project imports:
import '../statics/consts.dart';
import '../../modules/auth/domain/entities/token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FSSService {
  static const _storage = FlutterSecureStorage();
  static Future<bool> isRegistered() async =>
      await _storage.containsKey(key: TokenType.access.name);

  static Future<void> saveToken(AuthToken token) async {
    await _storage.write(key: TokenType.access.name, value: token.token);
    await _storage.write(key: TokenType.refresh.name, value: token.refresh);
  }

  static Future<String?> getAccessToken() async =>
      await _storage.read(key: TokenType.access.name);

  static Future<String?> getRefreshToken() async =>
      await _storage.read(key: TokenType.refresh.name);

  static Future<void> deleteTokens() async => await _storage.deleteAll();

}

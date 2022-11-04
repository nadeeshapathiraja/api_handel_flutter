import 'package:flutter_session_manager/flutter_session_manager.dart';

import '../model/UserModel.dart';

class SessionManage {
  static final sessionManager = SessionManager();
  static Future saveSession(String key, value) async =>
      await sessionManager.set(key, value);
  static Future getSession(String key) async => await sessionManager.get(key);
  static Future saveUserSession(String key, User user) async =>
      await sessionManager.set(key, user);
  static Future<User> getUserSession(String key) async =>
      User.fromJson(await sessionManager.get(key));
  static Future deleteSession(String key) async =>
      await sessionManager.remove(key);
  static Future destroySession(String key) async =>
      await sessionManager.destroy();
  static Future<bool> checkSession(String key) async =>
      await SessionManager().containsKey(key);
}

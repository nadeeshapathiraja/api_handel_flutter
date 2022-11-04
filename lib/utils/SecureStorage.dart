// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStoreage {
  static final _storage = FlutterSecureStorage();
  static final options =
      IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  static Future saveInSecureStorage(String key, String? value) async =>
      await _storage.write(key: key, value: value, iOptions: options);

  static Future<String?> getFromSecureStorage(String key) async =>
      await _storage.read(key: key, iOptions: options);

  static Future deleteFromSecureStorage(String key) async =>
      await _storage.delete(key: key, iOptions: options);
}

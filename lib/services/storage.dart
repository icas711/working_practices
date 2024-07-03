import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SecureStorage {
  Future<void> init() async {}

  Future<String?> readData(String key) async {}

  Future<void> deleteData(String key) async {}

  Future<void> writeData(String key, String value) async {}
}

class SecureStorageWeb implements SecureStorage {
  late SharedPreferences _storage;

  @override
  Future<void> init() async {
    _storage = await SharedPreferences.getInstance();
  }

  Future<String?> readData(String key) async {
    return await _storage.getString(key);
  }

  Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }

  Future<void> writeData(String key, String value) async {
    await _storage.setString(
      key,
      value,
    );
  }
}

class SecureStorageAndroid implements SecureStorage {
  late FlutterSecureStorage _storage;

  @override
  Future<void> init() async {
    _storage = const FlutterSecureStorage();
  }

  Future<String?> readData(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteData(String key) async {
    return await _storage.delete(key: key);
  }

  Future<void> writeData(String key, String value) async {
    await _storage.write(
      key: key,
      value: value,
    );
  }
}

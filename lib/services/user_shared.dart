import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:working_practices/presentation/login/user_repository/models/user.dart';
import 'package:working_practices/services/storage.dart';

class UserShared {
  static final UserShared _instance = UserShared._internal();

  factory UserShared() => _instance;

  UserShared._internal();

  late User _user;
  late SecureStorage _storage;



  Future<void> init() async {
    if(kIsWeb){
      _storage=SecureStorageWeb();
    }else {
      _storage = SecureStorageAndroid();
    }
    await _storage.init();
    final jsonUser = await _storage.readData('USER_STORAGE_DATA') ?? '';
    print('jsonUser: $jsonUser');
    if(jsonUser!=''){
      _user = User.fromJson(json.decode(jsonUser));
    }
     else {
      _user = User.empty;
    }
  }

  User getUser() => _user;

  Future<void> setUser(User _data) async {
    _user = _data;
    await _storage.writeData(
         'USER_STORAGE_DATA',  jsonEncode(_data.toJson()));
  }

  Future<void> deleteUser() async {
    _user = User.empty;
    await _storage.writeData(
        'USER_STORAGE_DATA',  jsonEncode(_user.toJson()));
  }

}

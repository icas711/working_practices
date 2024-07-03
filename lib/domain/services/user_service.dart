import 'dart:math';

import 'package:working_practices/domain/data_providers/user_data_provider.dart';
import 'package:working_practices/domain/entity/user.dart';

class UserService {
  final _userDataProvider = UserDataProvider();
  var _user = User(0);
  User get user => _user;

  Future<void> initilalize() async {
    _user = await _userDataProvider.loadValue();
  }


}

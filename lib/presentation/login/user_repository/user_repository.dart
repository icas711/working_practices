import 'dart:async';

import 'package:working_practices/presentation/login/user_repository/models/user.dart';
import 'package:working_practices/services/user_shared.dart';
import 'package:uuid/uuid.dart';

class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    final user= UserShared().getUser();
    if (user != User.empty) return _user=user;
    return Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = User(id: const Uuid().v4()),
    );
  }
}

import 'dart:async';

import 'package:working_practices/app/api/oauth_grant_type.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';

class AuthRepository {
  final IAppScope appScope;
  String? _organizationId;
   AuthRepository(this.appScope);
String? get organizationId =>_organizationId;
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    if (await appScope.oAuth.isSignedIn) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    const identifier = 'app';
    const secret = '';

    await appScope.oAuth.login(
      PasswordGrant(username: username, password: password),
    );
    _controller.add(AuthenticationStatus.authenticated);
  }



  Future<void> logOut() async {
    await appScope.oAuth.storage.delete();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => unawaited(_controller.close());
}

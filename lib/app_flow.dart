import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:working_practices/app.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/app/di/di_scope.dart';
import 'package:working_practices/ui/auth/data/auth_repository.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';

class AppFlow extends StatelessWidget {
  /// {@macro app_flow.class}
  const AppFlow({
    required this.appScope,
    super.key,
  });

  /// {@macro app_scope.class}
  final IAppScope appScope;


  @override
  Widget build(BuildContext context) {
    return  Nested(
      child:  App(),
      children: [
        DiScope<IAppScope>(factory: (_) => appScope),
        BlocProvider<AuthBloc>(create: (_) => AuthBloc(authenticationRepository: AuthRepository(appScope))),
      ],
    );
  }
}

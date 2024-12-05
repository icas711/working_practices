import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:working_practices/app/config/environment.dart';
import 'package:working_practices/app/di/app_scope_register.dart';
import 'package:working_practices/app_flow.dart';
import 'package:working_practices/auth_bloc_observable.dart';

Future<void> run(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  Bloc.observer = AuthBlocObservable();
  // TODO(init-project): Change as needed or remove.
  //await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

  await _runApp(env);
}

Future<void> _runApp(Environment env) async {
  const scopeRegister = AppScopeRegister();
  final scope = await scopeRegister.createScope(env);

  runApp(AppFlow(appScope: scope));
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app.dart';
import 'package:working_practices/app/router.dart';
import 'package:working_practices/app_bloc_observable.dart';
import 'package:working_practices/services/user_shared.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObservable();
  final GoRouter router = RoutingService().router;
  await UserShared().init();
  runApp(
       App(router: router),
  );
}







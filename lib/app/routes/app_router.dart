import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/app/routes/route_utils.dart';
import 'package:working_practices/app/routes/scaffold_with_nested_navigation.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';
import 'package:working_practices/ui/auth/presentation/screens/home_screen.dart';
import 'package:working_practices/ui/auth/presentation/screens/login_screen.dart';
import 'package:working_practices/ui/auth/presentation/screens/other_screen.dart';
import 'package:working_practices/ui/auth/presentation/screens/splash_screen.dart';

mixin AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellInit');
  static final _shellNavigatorSecondKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellSecond');


  static final GoRouter _router = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: _rootNavigatorKey,
       initialLocation: PAGES.splash.path,
      routes: [
        GoRoute(
            path: PAGES.splash.path,
            name: PAGES.splash.name,
            builder: (context, state) => const SplashScreen(),
            ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ScaffoldWithNestedNavigation(
                navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _shellNavigatorHomeKey,
              routes: [
                GoRoute(
                  path: PAGES.home.path,
                  name: PAGES.home.name,
                  builder: (context, state) => const HomeScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorSecondKey,
              routes: [
                GoRoute(
                  path: PAGES.second.path,
                  name: PAGES.second.name,
                  builder: (context, state) =>
                  const OtherScreen(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: PAGES.login.path,
          name: PAGES.login.name,
          builder: (context, state) => const LoginPage(),
        ),
      ],
      //errorBuilder: (context, state) => const NotFoundScreen(),
      redirect: (context, state) async {
        final status = context.read<AuthBloc>().state;
        bool loggedIn = false;
        if (status is Authenticated) {
          loggedIn = true;
        }
        loggedIn = await context.read<IAppScope>().oAuth.isSignedIn;
        bool onBoarding = state.matchedLocation == PAGES.splash.path;
        final bool loggingIn = state.matchedLocation == PAGES.login.path;
        final bool onMain = state.matchedLocation.contains(PAGES.home.path);
        if (loggedIn && loggingIn) {
          return PAGES.home.path;
        } else if (onBoarding && loggedIn) {
          return PAGES.home.path;
        } else if (onBoarding && !loggedIn) {
          return PAGES.login.path;
        }
        return null;
      },
  );

  /*bool isLoged() {
    final logged = dioApi.dio;
    return logged;
  }*/

  static GoRouter get router => _router;
}

import 'package:working_practices/presentation/login/authentication_repository/authentication_repository.dart';
import 'package:working_practices/presentation/login/bloc/authentication_bloc.dart';
import 'package:working_practices/presentation/login/view/home_page.dart';
import 'package:working_practices/presentation/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RoutingService {
  final router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: PAGES.main.path,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: PAGES.login.path,
        builder: (context, state) => const LoginPage(),
      ),
    ],
    redirect: (context, state) async {
      bool loggedIn = false;
      final status = context.read<AuthenticationBloc>().state;
      if (status is AuthenticationStateAuthenticated) {
        loggedIn = true;
      }
      final bool loggingIn = state.matchedLocation == PAGES.login.path;
      if (!loggedIn) return PAGES.login.path;
      if (loggingIn) return PAGES.main.path;
      // no need to redirect at all
      return null;
    },
  );
}

enum PAGES {
  login,
  home,
  cars,
  checklist,
  template,
  error,
  main,
}

extension AppPageExtension on PAGES {
  String get path {
    switch (this) {
      case PAGES.home:
        return "/";
      case PAGES.login:
        return "/login";
      case PAGES.template:
        return "/maket";
      case PAGES.checklist:
        return "/checklist";
      case PAGES.cars:
        return "/cars";
      case PAGES.error:
        return "/error";
      default:
        return "/";
    }
  }

  String get name {
    switch (this) {
      case PAGES.home:
        return "Home";
      case PAGES.login:
        return "Login";
      case PAGES.cars:
        return "Cars";
      case PAGES.checklist:
        return "Checklist";
      case PAGES.template:
        return "Maket";
      case PAGES.error:
        return "Error";
      default:
        return "Main";
    }
  }

  String get title {
    switch (this) {
      case PAGES.home:
        return "Организация";
      case PAGES.login:
        return "Авторизация";
      case PAGES.cars:
        return "Автомобили";
      case PAGES.checklist:
        return "Чеклист";
      case PAGES.template:
        return "Макет";
      case PAGES.error:
        return "Error";
      default:
        return "Main";
    }
  }
}

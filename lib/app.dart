import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/src/router.dart';
import 'package:working_practices/app/lk_theme.dart';
import 'package:working_practices/authentication/bloc/authentication_bloc.dart';
import 'package:working_practices/authentication_repository/lib/authentication_repository.dart';
import 'package:working_practices/user_repository/lib/src/user_repository.dart';

class App extends StatefulWidget {
  const App({super.key, required this.router});

  final GoRouter router;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthenticationRepository authenticationRepository;
  late final UserRepository userRepository;

  @override
  void initState() {
    super.initState();
    authenticationRepository = AuthenticationRepository();
    userRepository = UserRepository();
  }

  @override
  void dispose() {
    authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) => AuthenticationBloc(
                  authenticationRepository: authenticationRepository,
                  userRepository: userRepository)),
        ],
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              widget.router.refresh();
            },
            child: AppView(router: widget.router)),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: "Личный кабинет",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru', ''),
        Locale('en', ''),
      ],
      locale: const Locale('ru', ''),
      theme: ThemeData(
        pageTransitionsTheme: NoTransitionsOnWeb(),
        primarySwatch: Colors.blue,
        colorScheme:
            const ColorScheme.light(primary: LkPalette.greenDefaultMain),
      ),
    );
  }
}

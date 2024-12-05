import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:working_practices/app/routes/app_router.dart';
import 'package:working_practices/app/theme/light_theme.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.router;
    final ThemeData themeData=createLightTheme();
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        router.refresh();
      },
      child: MaterialApp.router(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ru'),
        ],
        routerConfig: router,
        title: 'Template',
        debugShowCheckedModeBanner: false,
        theme: themeData,
      ),
    );
  }
}

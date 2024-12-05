import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/app/routes/route_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Future<bool> logged;

  @override
  void initState() {
    logged = context.read<IAppScope>().oAuth.isSignedIn;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: logged,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!) {
              context.goNamed(PAGES.home.name);
            } else {
              context.goNamed(PAGES.login.name);
            }
          }
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        });
  }
}

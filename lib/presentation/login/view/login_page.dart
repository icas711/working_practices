import 'package:working_practices/presentation/login/authentication_repository/authentication_repository.dart';
import 'package:working_practices/presentation/login/bloc/login_bloc.dart';
import 'package:working_practices/presentation/login/view/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context),
            );
          },
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ВХОД В ЛИЧНЫЙ КАБИНЕТ'),
              SizedBox(height: 100),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

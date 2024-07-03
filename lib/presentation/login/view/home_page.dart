import 'package:working_practices/presentation/login/bloc/authentication_bloc.dart';
import 'package:working_practices/services/user_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Builder(
              builder: (context) {
                final user=UserShared().getUser();
                /*final userId = context.select(
                      (AuthenticationBloc bloc) => bloc.state.user.id,
                );*/
                return Text('UserID: ${user.id}');
              },
            ),
            ElevatedButton(
              child: const Text('Logout'),
              onPressed: () {
                context
                    .read<AuthenticationBloc>()
                    .add(const AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}

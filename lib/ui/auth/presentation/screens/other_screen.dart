import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app/routes/route_utils.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                onPressed: () {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.logoutRequested());
                  context.goNamed(PAGES.login.name);
                },
                icon: const Icon(Icons.exit_to_app)),
          ),
        ],
      ),
      body: const Center(child: Text('Other Screen')),
    );
  }
}

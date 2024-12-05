import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app/routes/route_utils.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/login.jpg'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Ошибка подключения'),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                child: const Text(
                  'Вернуться',
                ),
                onPressed: () {
                  context.goNamed(PAGES.login.path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

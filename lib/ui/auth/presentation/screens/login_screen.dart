import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:working_practices/app/di/app_scope.dart';
import 'package:working_practices/app/routes/route_utils.dart';
import 'package:working_practices/app/theme/build_context_ext.dart';
import 'package:working_practices/ui/auth/presentation/controller/auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          if (snapshot.hasData && snapshot.data == null)
            return const LoginPage();
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!) {
              context.goNamed('Main');
            } else {
              return const LoginPage();
            }
          } else {
            return const CircularProgressIndicator();
          }
          return const CircularProgressIndicator();
        });
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _login = '';
  String _password = '';
  bool _authenticationError = false;
  String? _authenticationErrorMessage;
  bool isHiddenPassword = true;
  bool validateLogin = true;
  bool validatePassword = true;
  bool loading = false;
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  Widget finalView = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350, minWidth: 200),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Center(
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.phone_iphone,
                              size: 100,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Добро пожаловать',
                              style: context.appText.drawerHeader,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.username],
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) => value!.isEmpty
                                    ? 'Поле не должно быть пустым'
                                    : null,
                                decoration: InputDecoration(
                                  labelText: 'Логин',
                                  fillColor: Colors.grey.shade200,
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  hintText: 'Введите логин',
                                  filled: true,
                                ),
                                onSaved: (value) => _login = value!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.password],
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                controller: passwordController,
                                validator: (value) => value!.isEmpty
                                    ? 'Поле не должно быть пустым'
                                    : null,
                                obscureText: isHiddenPassword,
                                decoration: InputDecoration(
                                  labelText: 'Пароль',
                                  fillColor: Colors.grey.shade200,
                                  border: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  hintText: 'Введите пароль',
                                  filled: true,
                                  suffix: InkWell(
                                    onTap: togglePasswordView,
                                    child: Icon(
                                      isHiddenPassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                onSaved: (value) => _password = value!,
                              ),
                            ),
                            BlocListener<AuthBloc, AuthState>(
                              listener: (context, state) {
                                //print(state);
                                if (state == const AuthState.loading()) {
                                  loading = true;
                                  setState(() {});
                                } else {
                                  if (mounted) {
                                    setState(() {
                                      loading = false;
                                    });
                                  }
                                }
                                if (state == const AuthState.failed()) {
                                  setState(() {
                                    loading = false;
                                    context.go('/error');
                                  });
                                }
                                if (state ==
                                    const AuthState.authenticated(true)) {
                                  context.goNamed(PAGES.home.path);
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                  width: constraints.maxWidth,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          side: const BorderSide(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        'Войти',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16),
                                      ),
                                    ),
                                    onPressed: () async {
                                      _formKey.currentState?.save();
                                      if (_login.isEmpty || _password.isEmpty) {
                                        _formKey.currentState?.validate();
                                      } else {
                                        try {
                                          context.read<AuthBloc>().add(
                                              AuthEvent.login(
                                                  status: true,
                                                  login: _login,
                                                  password: _password));
                                        } catch (e) {
                                          setState(() {
                                            _authenticationError = true;
                                            _authenticationErrorMessage =
                                                e.toString();
                                          });
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: SizedBox(
                                width: constraints.maxWidth,
                                child: ElevatedButton(
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text('Зарегистрироваться',
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (loading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}

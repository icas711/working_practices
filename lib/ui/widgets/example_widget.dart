import 'package:working_practices/domain/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class _ViewModelState {
  final String ageTitle;
  _ViewModelState({
    required this.ageTitle,
  });
}

class _ViewModel extends ChangeNotifier {
  final _userService = UserService();

  var _state = _ViewModelState(ageTitle: '');
  _ViewModelState get state => _state;

  void loadValue() async {
    await _userService.initilalize();
    _updateState();
  }

  _ViewModel() {
    loadValue();
  }



  void _updateState() {
    final user = _userService.user;

    _state = _ViewModelState(
      ageTitle: user.age.toString(),
    );
    notifyListeners();
  }
}

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  static Widget create() {
    return ChangeNotifierProvider(
      create: (_) => _ViewModel(),
      child: const ExampleWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _AgeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AgeTitle extends StatelessWidget {
  const _AgeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.select((_ViewModel vm) => vm.state.ageTitle);
    return Text(title);
  }
}



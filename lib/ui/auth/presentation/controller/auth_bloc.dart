import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:working_practices/ui/auth/data/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';
part 'auth_event.dart';
part 'auth_state.dart';


class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final AuthRepository authenticationRepository;
  String _organizationId='';
  String get organizationId=>_organizationId;
  AuthBloc({required this.authenticationRepository}) :
        super(const AuthState.initial()) {
    on<StatusChanged>(_onStatusChanged);

    on<LogoutRequested>(_onLogoutRequested);
    _authStatusSubscription = authenticationRepository.status.listen(
          (status) => add(StatusChanged(status: status)),
    );



    on<LoginEvent>((event, emit) async {
      emit(const AuthState.loading());
      await authenticationRepository.logIn(username: event.login, password: event.password);
    });

  }

  late StreamSubscription<AuthenticationStatus>
  _authStatusSubscription;

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onStatusChanged(
      event,
      emit,
      ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthState.unauthenticated());
      case AuthenticationStatus.authenticated:
        _organizationId=authenticationRepository.organizationId??'';
        return emit(const AuthState.authenticated(true));
      case AuthenticationStatus.unknown:
        return emit(const AuthState.initial());
    }
  }

  Future<void> _onLogoutRequested(event, emit) async {
    await authenticationRepository.logOut();
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) =>AuthState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

}

part of 'auth_bloc.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.statusChanged({
    required AuthenticationStatus status,
  }) = StatusChanged;
  const factory AuthEvent.login({
    required bool status,
    required String login,
    required String password,
  }) = LoginEvent;
  const factory AuthEvent.logoutRequested() =LogoutRequested;

  factory AuthEvent.fromJson(Map<String, dynamic> json) => _$AuthEventFromJson(json);
}

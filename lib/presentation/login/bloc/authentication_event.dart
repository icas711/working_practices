part of 'authentication_bloc.dart';


@freezed
sealed  class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChanged({
    required AuthenticationStatus status,
  }) = AuthenticationStatusChanged;
  const factory AuthenticationEvent.check() = AuthenticationCheck;
  const factory AuthenticationEvent.logoutRequested() = AuthenticationLogoutRequested;

  factory AuthenticationEvent.fromJson(Map<String, dynamic> json) => _$AuthenticationEventFromJson(json);
}

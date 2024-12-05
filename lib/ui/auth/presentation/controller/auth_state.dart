part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(bool status) = Authenticated;
  const factory AuthState.unauthenticated()=Unauthenticated;
  const factory AuthState.loading()=Loading;
  const factory AuthState.failed() = Failed;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}

part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState(
      [@Default(AuthenticationStatus.unknown) AuthenticationStatus status,
      @Default(User.empty) User user,]
      ) = _AuthenticationState;

  const factory AuthenticationState.unknown(
      [@Default(AuthenticationStatus.unknown) AuthenticationStatus status,
        @Default(User.empty) User user,]
  ) = AuthenticationStateUnrkown;

  const factory AuthenticationState.authenticated(User user) = AuthenticationStateAuthenticated;

  const factory AuthenticationState.unauthenticated() = AuthenticationStateUnauthenticated;

  const factory AuthenticationState.error() = AuthenticationStateError;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}

/*class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user = User.empty,
  });

  const AuthenticationState.unknown() : this._();

  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  final AuthenticationStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}*/

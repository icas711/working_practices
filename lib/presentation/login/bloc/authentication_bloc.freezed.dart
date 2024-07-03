// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationEvent _$AuthenticationEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'statusChanged':
      return AuthenticationStatusChanged.fromJson(json);
    case 'check':
      return AuthenticationCheck.fromJson(json);
    case 'logoutRequested':
      return AuthenticationLogoutRequested.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthenticationEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() check,
    required TResult Function() logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? check,
    TResult? Function()? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? check,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
    required TResult Function(AuthenticationCheck value) check,
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(AuthenticationCheck value)? check,
    TResult? Function(AuthenticationLogoutRequested value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    TResult Function(AuthenticationCheck value)? check,
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationStatusChangedImplCopyWith<$Res> {
  factory _$$AuthenticationStatusChangedImplCopyWith(
          _$AuthenticationStatusChangedImpl value,
          $Res Function(_$AuthenticationStatusChangedImpl) then) =
      __$$AuthenticationStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$AuthenticationStatusChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationStatusChangedImpl>
    implements _$$AuthenticationStatusChangedImplCopyWith<$Res> {
  __$$AuthenticationStatusChangedImplCopyWithImpl(
      _$AuthenticationStatusChangedImpl _value,
      $Res Function(_$AuthenticationStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AuthenticationStatusChangedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStatusChangedImpl implements AuthenticationStatusChanged {
  const _$AuthenticationStatusChangedImpl(
      {required this.status, final String? $type})
      : $type = $type ?? 'statusChanged';

  factory _$AuthenticationStatusChangedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationStatusChangedImplFromJson(json);

  @override
  final AuthenticationStatus status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStatusChangedImplCopyWith<_$AuthenticationStatusChangedImpl>
      get copyWith => __$$AuthenticationStatusChangedImplCopyWithImpl<
          _$AuthenticationStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() check,
    required TResult Function() logoutRequested,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? check,
    TResult? Function()? logoutRequested,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? check,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
    required TResult Function(AuthenticationCheck value) check,
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(AuthenticationCheck value)? check,
    TResult? Function(AuthenticationLogoutRequested value)? logoutRequested,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    TResult Function(AuthenticationCheck value)? check,
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStatusChangedImplToJson(
      this,
    );
  }
}

abstract class AuthenticationStatusChanged implements AuthenticationEvent {
  const factory AuthenticationStatusChanged(
          {required final AuthenticationStatus status}) =
      _$AuthenticationStatusChangedImpl;

  factory AuthenticationStatusChanged.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStatusChangedImpl.fromJson;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$AuthenticationStatusChangedImplCopyWith<_$AuthenticationStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationCheckImplCopyWith<$Res> {
  factory _$$AuthenticationCheckImplCopyWith(_$AuthenticationCheckImpl value,
          $Res Function(_$AuthenticationCheckImpl) then) =
      __$$AuthenticationCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationCheckImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticationCheckImpl>
    implements _$$AuthenticationCheckImplCopyWith<$Res> {
  __$$AuthenticationCheckImplCopyWithImpl(_$AuthenticationCheckImpl _value,
      $Res Function(_$AuthenticationCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationCheckImpl implements AuthenticationCheck {
  const _$AuthenticationCheckImpl({final String? $type})
      : $type = $type ?? 'check';

  factory _$AuthenticationCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationCheckImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationEvent.check()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationCheckImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() check,
    required TResult Function() logoutRequested,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? check,
    TResult? Function()? logoutRequested,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? check,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
    required TResult Function(AuthenticationCheck value) check,
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(AuthenticationCheck value)? check,
    TResult? Function(AuthenticationLogoutRequested value)? logoutRequested,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    TResult Function(AuthenticationCheck value)? check,
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationCheckImplToJson(
      this,
    );
  }
}

abstract class AuthenticationCheck implements AuthenticationEvent {
  const factory AuthenticationCheck() = _$AuthenticationCheckImpl;

  factory AuthenticationCheck.fromJson(Map<String, dynamic> json) =
      _$AuthenticationCheckImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthenticationLogoutRequestedImplCopyWith<$Res> {
  factory _$$AuthenticationLogoutRequestedImplCopyWith(
          _$AuthenticationLogoutRequestedImpl value,
          $Res Function(_$AuthenticationLogoutRequestedImpl) then) =
      __$$AuthenticationLogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationLogoutRequestedImpl>
    implements _$$AuthenticationLogoutRequestedImplCopyWith<$Res> {
  __$$AuthenticationLogoutRequestedImplCopyWithImpl(
      _$AuthenticationLogoutRequestedImpl _value,
      $Res Function(_$AuthenticationLogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationLogoutRequestedImpl
    implements AuthenticationLogoutRequested {
  const _$AuthenticationLogoutRequestedImpl({final String? $type})
      : $type = $type ?? 'logoutRequested';

  factory _$AuthenticationLogoutRequestedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationLogoutRequestedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLogoutRequestedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() check,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? check,
    TResult? Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? check,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationStatusChanged value) statusChanged,
    required TResult Function(AuthenticationCheck value) check,
    required TResult Function(AuthenticationLogoutRequested value)
        logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(AuthenticationCheck value)? check,
    TResult? Function(AuthenticationLogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationStatusChanged value)? statusChanged,
    TResult Function(AuthenticationCheck value)? check,
    TResult Function(AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationLogoutRequestedImplToJson(
      this,
    );
  }
}

abstract class AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory AuthenticationLogoutRequested() =
      _$AuthenticationLogoutRequestedImpl;

  factory AuthenticationLogoutRequested.fromJson(Map<String, dynamic> json) =
      _$AuthenticationLogoutRequestedImpl.fromJson;
}

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _AuthenticationState.fromJson(json);
    case 'unknown':
      return AuthenticationStateUnrkown.fromJson(json);
    case 'authenticated':
      return AuthenticationStateAuthenticated.fromJson(json);
    case 'unauthenticated':
      return AuthenticationStateUnauthenticated.fromJson(json);
    case 'error':
      return AuthenticationStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthenticationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      [this.status = AuthenticationStatus.unknown,
      this.user = User.empty,
      final String? $type])
      : $type = $type ?? 'default';

  factory _$AuthenticationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationStateImplFromJson(json);

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState(status: $status, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) {
    return $default(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) {
    return $default?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStateImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      [final AuthenticationStatus status,
      final User user]) = _$AuthenticationStateImpl;

  factory _AuthenticationState.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStateImpl.fromJson;

  AuthenticationStatus get status;
  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationStateUnrkownImplCopyWith<$Res> {
  factory _$$AuthenticationStateUnrkownImplCopyWith(
          _$AuthenticationStateUnrkownImpl value,
          $Res Function(_$AuthenticationStateUnrkownImpl) then) =
      __$$AuthenticationStateUnrkownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticationStateUnrkownImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateUnrkownImpl>
    implements _$$AuthenticationStateUnrkownImplCopyWith<$Res> {
  __$$AuthenticationStateUnrkownImplCopyWithImpl(
      _$AuthenticationStateUnrkownImpl _value,
      $Res Function(_$AuthenticationStateUnrkownImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$AuthenticationStateUnrkownImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStateUnrkownImpl implements AuthenticationStateUnrkown {
  const _$AuthenticationStateUnrkownImpl(
      [this.status = AuthenticationStatus.unknown,
      this.user = User.empty,
      final String? $type])
      : $type = $type ?? 'unknown';

  factory _$AuthenticationStateUnrkownImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationStateUnrkownImplFromJson(json);

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.unknown(status: $status, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateUnrkownImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateUnrkownImplCopyWith<_$AuthenticationStateUnrkownImpl>
      get copyWith => __$$AuthenticationStateUnrkownImplCopyWithImpl<
          _$AuthenticationStateUnrkownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) {
    return unknown(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) {
    return unknown?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStateUnrkownImplToJson(
      this,
    );
  }
}

abstract class AuthenticationStateUnrkown implements AuthenticationState {
  const factory AuthenticationStateUnrkown(
      [final AuthenticationStatus status,
      final User user]) = _$AuthenticationStateUnrkownImpl;

  factory AuthenticationStateUnrkown.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStateUnrkownImpl.fromJson;

  AuthenticationStatus get status;
  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticationStateUnrkownImplCopyWith<_$AuthenticationStateUnrkownImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationStateAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticationStateAuthenticatedImplCopyWith(
          _$AuthenticationStateAuthenticatedImpl value,
          $Res Function(_$AuthenticationStateAuthenticatedImpl) then) =
      __$$AuthenticationStateAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticationStateAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateAuthenticatedImpl>
    implements _$$AuthenticationStateAuthenticatedImplCopyWith<$Res> {
  __$$AuthenticationStateAuthenticatedImplCopyWithImpl(
      _$AuthenticationStateAuthenticatedImpl _value,
      $Res Function(_$AuthenticationStateAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticationStateAuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStateAuthenticatedImpl
    implements AuthenticationStateAuthenticated {
  const _$AuthenticationStateAuthenticatedImpl(this.user, {final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$AuthenticationStateAuthenticatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationStateAuthenticatedImplFromJson(json);

  @override
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateAuthenticatedImplCopyWith<
          _$AuthenticationStateAuthenticatedImpl>
      get copyWith => __$$AuthenticationStateAuthenticatedImplCopyWithImpl<
          _$AuthenticationStateAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStateAuthenticatedImplToJson(
      this,
    );
  }
}

abstract class AuthenticationStateAuthenticated implements AuthenticationState {
  const factory AuthenticationStateAuthenticated(final User user) =
      _$AuthenticationStateAuthenticatedImpl;

  factory AuthenticationStateAuthenticated.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStateAuthenticatedImpl.fromJson;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticationStateAuthenticatedImplCopyWith<
          _$AuthenticationStateAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationStateUnauthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticationStateUnauthenticatedImplCopyWith(
          _$AuthenticationStateUnauthenticatedImpl value,
          $Res Function(_$AuthenticationStateUnauthenticatedImpl) then) =
      __$$AuthenticationStateUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStateUnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateUnauthenticatedImpl>
    implements _$$AuthenticationStateUnauthenticatedImplCopyWith<$Res> {
  __$$AuthenticationStateUnauthenticatedImplCopyWithImpl(
      _$AuthenticationStateUnauthenticatedImpl _value,
      $Res Function(_$AuthenticationStateUnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStateUnauthenticatedImpl
    implements AuthenticationStateUnauthenticated {
  const _$AuthenticationStateUnauthenticatedImpl({final String? $type})
      : $type = $type ?? 'unauthenticated';

  factory _$AuthenticationStateUnauthenticatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AuthenticationStateUnauthenticatedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateUnauthenticatedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStateUnauthenticatedImplToJson(
      this,
    );
  }
}

abstract class AuthenticationStateUnauthenticated
    implements AuthenticationState {
  const factory AuthenticationStateUnauthenticated() =
      _$AuthenticationStateUnauthenticatedImpl;

  factory AuthenticationStateUnauthenticated.fromJson(
          Map<String, dynamic> json) =
      _$AuthenticationStateUnauthenticatedImpl.fromJson;
}

/// @nodoc
abstract class _$$AuthenticationStateErrorImplCopyWith<$Res> {
  factory _$$AuthenticationStateErrorImplCopyWith(
          _$AuthenticationStateErrorImpl value,
          $Res Function(_$AuthenticationStateErrorImpl) then) =
      __$$AuthenticationStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationStateErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationStateErrorImpl>
    implements _$$AuthenticationStateErrorImplCopyWith<$Res> {
  __$$AuthenticationStateErrorImplCopyWithImpl(
      _$AuthenticationStateErrorImpl _value,
      $Res Function(_$AuthenticationStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationStateErrorImpl implements AuthenticationStateError {
  const _$AuthenticationStateErrorImpl({final String? $type})
      : $type = $type ?? 'error';

  factory _$AuthenticationStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationStateErrorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthenticationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateErrorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user) $default, {
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(AuthenticationStatus status, User user)? $default, {
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AuthenticationStatus status, User user)? $default, {
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthenticationState value) $default, {
    required TResult Function(AuthenticationStateUnrkown value) unknown,
    required TResult Function(AuthenticationStateAuthenticated value)
        authenticated,
    required TResult Function(AuthenticationStateUnauthenticated value)
        unauthenticated,
    required TResult Function(AuthenticationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthenticationState value)? $default, {
    TResult? Function(AuthenticationStateUnrkown value)? unknown,
    TResult? Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult? Function(AuthenticationStateUnauthenticated value)?
        unauthenticated,
    TResult? Function(AuthenticationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthenticationState value)? $default, {
    TResult Function(AuthenticationStateUnrkown value)? unknown,
    TResult Function(AuthenticationStateAuthenticated value)? authenticated,
    TResult Function(AuthenticationStateUnauthenticated value)? unauthenticated,
    TResult Function(AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationStateErrorImplToJson(
      this,
    );
  }
}

abstract class AuthenticationStateError implements AuthenticationState {
  const factory AuthenticationStateError() = _$AuthenticationStateErrorImpl;

  factory AuthenticationStateError.fromJson(Map<String, dynamic> json) =
      _$AuthenticationStateErrorImpl.fromJson;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusChangedImpl _$$StatusChangedImplFromJson(Map<String, dynamic> json) =>
    _$StatusChangedImpl(
      status: $enumDecode(_$AuthenticationStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StatusChangedImplToJson(_$StatusChangedImpl instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
};

_$LoginEventImpl _$$LoginEventImplFromJson(Map<String, dynamic> json) =>
    _$LoginEventImpl(
      status: json['status'] as bool,
      login: json['login'] as String,
      password: json['password'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoginEventImplToJson(_$LoginEventImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'login': instance.login,
      'password': instance.password,
      'runtimeType': instance.$type,
    };

_$LogoutRequestedImpl _$$LogoutRequestedImplFromJson(
        Map<String, dynamic> json) =>
    _$LogoutRequestedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LogoutRequestedImplToJson(
        _$LogoutRequestedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticatedImpl _$$AuthenticatedImplFromJson(Map<String, dynamic> json) =>
    _$AuthenticatedImpl(
      json['status'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticatedImplToJson(_$AuthenticatedImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$UnauthenticatedImpl _$$UnauthenticatedImplFromJson(
        Map<String, dynamic> json) =>
    _$UnauthenticatedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UnauthenticatedImplToJson(
        _$UnauthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingImpl _$$LoadingImplFromJson(Map<String, dynamic> json) =>
    _$LoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingImplToJson(_$LoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$FailedImpl _$$FailedImplFromJson(Map<String, dynamic> json) => _$FailedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FailedImplToJson(_$FailedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

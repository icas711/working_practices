// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationStatusChangedImpl _$$AuthenticationStatusChangedImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStatusChangedImpl(
      status: $enumDecode(_$AuthenticationStatusEnumMap, json['status']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationStatusChangedImplToJson(
        _$AuthenticationStatusChangedImpl instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
};

_$AuthenticationCheckImpl _$$AuthenticationCheckImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationCheckImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationCheckImplToJson(
        _$AuthenticationCheckImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticationLogoutRequestedImpl
    _$$AuthenticationLogoutRequestedImplFromJson(Map<String, dynamic> json) =>
        _$AuthenticationLogoutRequestedImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$AuthenticationLogoutRequestedImplToJson(
        _$AuthenticationLogoutRequestedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticationStateImpl _$$AuthenticationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStateImpl(
      $enumDecodeNullable(_$AuthenticationStatusEnumMap, json['status']) ??
          AuthenticationStatus.unknown,
      json['user'] == null
          ? User.empty
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationStateImplToJson(
        _$AuthenticationStateImpl instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$AuthenticationStateUnrkownImpl _$$AuthenticationStateUnrkownImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStateUnrkownImpl(
      $enumDecodeNullable(_$AuthenticationStatusEnumMap, json['status']) ??
          AuthenticationStatus.unknown,
      json['user'] == null
          ? User.empty
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationStateUnrkownImplToJson(
        _$AuthenticationStateUnrkownImpl instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$AuthenticationStateAuthenticatedImpl
    _$$AuthenticationStateAuthenticatedImplFromJson(
            Map<String, dynamic> json) =>
        _$AuthenticationStateAuthenticatedImpl(
          User.fromJson(json['user'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$AuthenticationStateAuthenticatedImplToJson(
        _$AuthenticationStateAuthenticatedImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'runtimeType': instance.$type,
    };

_$AuthenticationStateUnauthenticatedImpl
    _$$AuthenticationStateUnauthenticatedImplFromJson(
            Map<String, dynamic> json) =>
        _$AuthenticationStateUnauthenticatedImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$AuthenticationStateUnauthenticatedImplToJson(
        _$AuthenticationStateUnauthenticatedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthenticationStateErrorImpl _$$AuthenticationStateErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationStateErrorImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthenticationStateErrorImplToJson(
        _$AuthenticationStateErrorImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: json['status'] as bool,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresInSec: (json['expires_in_sec'] as num).toInt(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_in_sec': instance.expiresInSec,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  roleId: json['role_id'] as String,
  role: json['role'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String?,
  profileImageUrl: json['profile_image_url'] as String,
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role_id': instance.roleId,
      'role': instance.role,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'profile_image_url': instance.profileImageUrl,
    };

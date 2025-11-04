// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleResponseImpl _$$RoleResponseImplFromJson(Map<String, dynamic> json) =>
    _$RoleResponseImpl(
      status: json['status'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoleResponseImplToJson(_$RoleResponseImpl instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) =>
    _$RoleImpl(id: (json['id'] as num).toInt(), role: json['role'] as String);

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{'id': instance.id, 'role': instance.role};

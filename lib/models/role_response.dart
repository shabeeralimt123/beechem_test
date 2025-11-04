import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_response.freezed.dart';
part 'role_response.g.dart';

@freezed
class RoleResponse with _$RoleResponse {
  const factory RoleResponse({
    required bool status,
    @JsonKey(name: 'data') required List<Role> data,
  }) = _RoleResponse;

  factory RoleResponse.fromJson(Map<String, dynamic> json) => _$RoleResponseFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    required int id,
    required String role,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
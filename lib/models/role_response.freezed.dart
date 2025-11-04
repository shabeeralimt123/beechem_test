// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoleResponse _$RoleResponseFromJson(Map<String, dynamic> json) {
  return _RoleResponse.fromJson(json);
}

/// @nodoc
mixin _$RoleResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Role> get data => throw _privateConstructorUsedError;

  /// Serializes this RoleResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleResponseCopyWith<RoleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleResponseCopyWith<$Res> {
  factory $RoleResponseCopyWith(
    RoleResponse value,
    $Res Function(RoleResponse) then,
  ) = _$RoleResponseCopyWithImpl<$Res, RoleResponse>;
  @useResult
  $Res call({bool status, @JsonKey(name: 'data') List<Role> data});
}

/// @nodoc
class _$RoleResponseCopyWithImpl<$Res, $Val extends RoleResponse>
    implements $RoleResponseCopyWith<$Res> {
  _$RoleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Role>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleResponseImplCopyWith<$Res>
    implements $RoleResponseCopyWith<$Res> {
  factory _$$RoleResponseImplCopyWith(
    _$RoleResponseImpl value,
    $Res Function(_$RoleResponseImpl) then,
  ) = __$$RoleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, @JsonKey(name: 'data') List<Role> data});
}

/// @nodoc
class __$$RoleResponseImplCopyWithImpl<$Res>
    extends _$RoleResponseCopyWithImpl<$Res, _$RoleResponseImpl>
    implements _$$RoleResponseImplCopyWith<$Res> {
  __$$RoleResponseImplCopyWithImpl(
    _$RoleResponseImpl _value,
    $Res Function(_$RoleResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$RoleResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Role>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleResponseImpl implements _RoleResponse {
  const _$RoleResponseImpl({
    required this.status,
    @JsonKey(name: 'data') required final List<Role> data,
  }) : _data = data;

  factory _$RoleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleResponseImplFromJson(json);

  @override
  final bool status;
  final List<Role> _data;
  @override
  @JsonKey(name: 'data')
  List<Role> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RoleResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of RoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleResponseImplCopyWith<_$RoleResponseImpl> get copyWith =>
      __$$RoleResponseImplCopyWithImpl<_$RoleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleResponseImplToJson(this);
  }
}

abstract class _RoleResponse implements RoleResponse {
  const factory _RoleResponse({
    required final bool status,
    @JsonKey(name: 'data') required final List<Role> data,
  }) = _$RoleResponseImpl;

  factory _RoleResponse.fromJson(Map<String, dynamic> json) =
      _$RoleResponseImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: 'data')
  List<Role> get data;

  /// Create a copy of RoleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleResponseImplCopyWith<_$RoleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  int get id => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this Role to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({int id, String role});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? role = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
    _$RoleImpl value,
    $Res Function(_$RoleImpl) then,
  ) = __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String role});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
    : super(_value, _then);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? role = null}) {
    return _then(
      _$RoleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl({required this.id, required this.role});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  final int id;
  @override
  final String role;

  @override
  String toString() {
    return 'Role(id: $id, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, role);

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(this);
  }
}

abstract class _Role implements Role {
  const factory _Role({required final int id, required final String role}) =
      _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  int get id;
  @override
  String get role;

  /// Create a copy of Role
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personnel_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PersonnelDetails _$PersonnelDetailsFromJson(Map<String, dynamic> json) {
  return _PersonnelDetails.fromJson(json);
}

/// @nodoc
mixin _$PersonnelDetails {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get suburb => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_number')
  String? get contactNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_notes')
  String? get additionalNotes => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_ids')
  List<String> get roleIds => throw _privateConstructorUsedError;

  /// Serializes this PersonnelDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonnelDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonnelDetailsCopyWith<PersonnelDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonnelDetailsCopyWith<$Res> {
  factory $PersonnelDetailsCopyWith(
    PersonnelDetails value,
    $Res Function(PersonnelDetails) then,
  ) = _$PersonnelDetailsCopyWithImpl<$Res, PersonnelDetails>;
  @useResult
  $Res call({
    String firstName,
    String lastName,
    String address,
    String? latitude,
    String? longitude,
    String? suburb,
    String? state,
    String? postcode,
    String? country,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'additional_notes') String? additionalNotes,
    String status,
    @JsonKey(name: 'role_ids') List<String> roleIds,
  });
}

/// @nodoc
class _$PersonnelDetailsCopyWithImpl<$Res, $Val extends PersonnelDetails>
    implements $PersonnelDetailsCopyWith<$Res> {
  _$PersonnelDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonnelDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? suburb = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? contactNumber = freezed,
    Object? additionalNotes = freezed,
    Object? status = null,
    Object? roleIds = null,
  }) {
    return _then(
      _value.copyWith(
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as String?,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as String?,
            suburb: freezed == suburb
                ? _value.suburb
                : suburb // ignore: cast_nullable_to_non_nullable
                      as String?,
            state: freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String?,
            postcode: freezed == postcode
                ? _value.postcode
                : postcode // ignore: cast_nullable_to_non_nullable
                      as String?,
            country: freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                      as String?,
            contactNumber: freezed == contactNumber
                ? _value.contactNumber
                : contactNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            additionalNotes: freezed == additionalNotes
                ? _value.additionalNotes
                : additionalNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            roleIds: null == roleIds
                ? _value.roleIds
                : roleIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PersonnelDetailsImplCopyWith<$Res>
    implements $PersonnelDetailsCopyWith<$Res> {
  factory _$$PersonnelDetailsImplCopyWith(
    _$PersonnelDetailsImpl value,
    $Res Function(_$PersonnelDetailsImpl) then,
  ) = __$$PersonnelDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String firstName,
    String lastName,
    String address,
    String? latitude,
    String? longitude,
    String? suburb,
    String? state,
    String? postcode,
    String? country,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'additional_notes') String? additionalNotes,
    String status,
    @JsonKey(name: 'role_ids') List<String> roleIds,
  });
}

/// @nodoc
class __$$PersonnelDetailsImplCopyWithImpl<$Res>
    extends _$PersonnelDetailsCopyWithImpl<$Res, _$PersonnelDetailsImpl>
    implements _$$PersonnelDetailsImplCopyWith<$Res> {
  __$$PersonnelDetailsImplCopyWithImpl(
    _$PersonnelDetailsImpl _value,
    $Res Function(_$PersonnelDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonnelDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? address = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? suburb = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? contactNumber = freezed,
    Object? additionalNotes = freezed,
    Object? status = null,
    Object? roleIds = null,
  }) {
    return _then(
      _$PersonnelDetailsImpl(
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as String?,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as String?,
        suburb: freezed == suburb
            ? _value.suburb
            : suburb // ignore: cast_nullable_to_non_nullable
                  as String?,
        state: freezed == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        postcode: freezed == postcode
            ? _value.postcode
            : postcode // ignore: cast_nullable_to_non_nullable
                  as String?,
        country: freezed == country
            ? _value.country
            : country // ignore: cast_nullable_to_non_nullable
                  as String?,
        contactNumber: freezed == contactNumber
            ? _value.contactNumber
            : contactNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        additionalNotes: freezed == additionalNotes
            ? _value.additionalNotes
            : additionalNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        roleIds: null == roleIds
            ? _value._roleIds
            : roleIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonnelDetailsImpl implements _PersonnelDetails {
  const _$PersonnelDetailsImpl({
    required this.firstName,
    required this.lastName,
    required this.address,
    this.latitude,
    this.longitude,
    this.suburb,
    this.state,
    this.postcode,
    this.country,
    @JsonKey(name: 'contact_number') this.contactNumber,
    @JsonKey(name: 'additional_notes') this.additionalNotes,
    required this.status,
    @JsonKey(name: 'role_ids') required final List<String> roleIds,
  }) : _roleIds = roleIds;

  factory _$PersonnelDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonnelDetailsImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String address;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? suburb;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;
  @override
  @JsonKey(name: 'contact_number')
  final String? contactNumber;
  @override
  @JsonKey(name: 'additional_notes')
  final String? additionalNotes;
  @override
  final String status;
  final List<String> _roleIds;
  @override
  @JsonKey(name: 'role_ids')
  List<String> get roleIds {
    if (_roleIds is EqualUnmodifiableListView) return _roleIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roleIds);
  }

  @override
  String toString() {
    return 'PersonnelDetails(firstName: $firstName, lastName: $lastName, address: $address, latitude: $latitude, longitude: $longitude, suburb: $suburb, state: $state, postcode: $postcode, country: $country, contactNumber: $contactNumber, additionalNotes: $additionalNotes, status: $status, roleIds: $roleIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonnelDetailsImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.suburb, suburb) || other.suburb == suburb) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._roleIds, _roleIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    firstName,
    lastName,
    address,
    latitude,
    longitude,
    suburb,
    state,
    postcode,
    country,
    contactNumber,
    additionalNotes,
    status,
    const DeepCollectionEquality().hash(_roleIds),
  );

  /// Create a copy of PersonnelDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonnelDetailsImplCopyWith<_$PersonnelDetailsImpl> get copyWith =>
      __$$PersonnelDetailsImplCopyWithImpl<_$PersonnelDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonnelDetailsImplToJson(this);
  }
}

abstract class _PersonnelDetails implements PersonnelDetails {
  const factory _PersonnelDetails({
    required final String firstName,
    required final String lastName,
    required final String address,
    final String? latitude,
    final String? longitude,
    final String? suburb,
    final String? state,
    final String? postcode,
    final String? country,
    @JsonKey(name: 'contact_number') final String? contactNumber,
    @JsonKey(name: 'additional_notes') final String? additionalNotes,
    required final String status,
    @JsonKey(name: 'role_ids') required final List<String> roleIds,
  }) = _$PersonnelDetailsImpl;

  factory _PersonnelDetails.fromJson(Map<String, dynamic> json) =
      _$PersonnelDetailsImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get address;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get suburb;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  @JsonKey(name: 'contact_number')
  String? get contactNumber;
  @override
  @JsonKey(name: 'additional_notes')
  String? get additionalNotes;
  @override
  String get status;
  @override
  @JsonKey(name: 'role_ids')
  List<String> get roleIds;

  /// Create a copy of PersonnelDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonnelDetailsImplCopyWith<_$PersonnelDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

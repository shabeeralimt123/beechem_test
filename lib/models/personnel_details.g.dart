// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personnel_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonnelDetailsImpl _$$PersonnelDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$PersonnelDetailsImpl(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  address: json['address'] as String,
  latitude: json['latitude'] as String?,
  longitude: json['longitude'] as String?,
  suburb: json['suburb'] as String?,
  state: json['state'] as String?,
  postcode: json['postcode'] as String?,
  country: json['country'] as String?,
  contactNumber: json['contact_number'] as String?,
  additionalNotes: json['additional_notes'] as String?,
  status: json['status'] as String,
  roleIds: (json['role_ids'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$$PersonnelDetailsImplToJson(
  _$PersonnelDetailsImpl instance,
) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'address': instance.address,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'suburb': instance.suburb,
  'state': instance.state,
  'postcode': instance.postcode,
  'country': instance.country,
  'contact_number': instance.contactNumber,
  'additional_notes': instance.additionalNotes,
  'status': instance.status,
  'role_ids': instance.roleIds,
};

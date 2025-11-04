import 'package:freezed_annotation/freezed_annotation.dart';

part 'personnel_details.freezed.dart';
part 'personnel_details.g.dart';

@freezed
class PersonnelDetails with _$PersonnelDetails {
  const factory PersonnelDetails({
    required String firstName,
    required String lastName,
    required String address,
    String? latitude,
    String? longitude,
    String? suburb,
    String? state,
    String? postcode,
    String? country,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'additional_notes') String? additionalNotes,
    required String status,
    @JsonKey(name: 'role_ids') required List<String> roleIds,
  }) = _PersonnelDetails;

  factory PersonnelDetails.fromJson(Map<String, dynamic> json) => _$PersonnelDetailsFromJson(json);
}
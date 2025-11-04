class PersonnelResponse {
  final bool status;
  final List<Personnel> data;

  PersonnelResponse({
    required this.status,
    required this.data,
  });

  factory PersonnelResponse.fromJson(Map<String, dynamic> json) {
    return PersonnelResponse(
      status: json['status'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Personnel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Personnel {
  final int id;
  final String firstName;
  final String? lastName;
  final String address;
  final String? latitude;
  final String? longitude;
  final String? suburb;
  final String? state;
  final String? postcode;
  final String? country;
  final String? contactNumber;
  final String? additionalNotes;
  final String status;
  final List<String> roleIds;
  final String createdBy;
  final String? updatedBy;
  final List<RoleDetail> roleDetails;
  final List<String> apiaryRoleArray;

  Personnel({
    required this.id,
    required this.firstName,
    this.lastName,
    required this.address,
    this.latitude,
    this.longitude,
    this.suburb,
    this.state,
    this.postcode,
    this.country,
    this.contactNumber,
    this.additionalNotes,
    required this.status,
    required this.roleIds,
    required this.createdBy,
    this.updatedBy,
    required this.roleDetails,
    required this.apiaryRoleArray,
  });

  factory Personnel.fromJson(Map<String, dynamic> json) {
    // Handle role_ids parsing - directly from the array
    List<String> roleIds = [];
    if (json['role_ids'] != null) {
      try {
        roleIds = (json['role_ids'] as List<dynamic>)
            .map((e) => e.toString())
            .toList();
      } catch (e) {
        roleIds = [];
      }
    }

    // Handle role_details parsing - sometimes it might be empty or null
    List<RoleDetail> roleDetails = [];
    if (json['role_details'] != null) {
      try {
        roleDetails = (json['role_details'] as List<dynamic>)
            .map((e) => RoleDetail.fromJson(e as Map<String, dynamic>))
            .toList();
      } catch (e) {
        roleDetails = [];
      }
    }

    // Handle apiary_role_array parsing
    List<String> apiaryRoleArray = [];
    if (json['apiary_role_array'] != null) {
      try {
        apiaryRoleArray = (json['apiary_role_array'] as List<dynamic>)
            .map((e) => e.toString())
            .toList();
      } catch (e) {
        apiaryRoleArray = [];
      }
    }

    return Personnel(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
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
      roleIds: roleIds,
      createdBy: json['created_by'] as String,
      updatedBy: json['updated_by'] as String?,
      roleDetails: roleDetails,
      apiaryRoleArray: apiaryRoleArray,
    );
  }
}

class RoleDetail {
  final int id;
  final String role;

  RoleDetail({
    required this.id,
    required this.role,
  });

  factory RoleDetail.fromJson(Map<String, dynamic> json) {
    return RoleDetail(
      id: json['id'] as int,
      role: json['role'] as String,
    );
  }
}
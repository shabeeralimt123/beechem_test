import 'package:dio/dio.dart';
import '../models/personnel_details.dart';

class PersonnelDetailsRepository {
  final Dio _dio;

  PersonnelDetailsRepository(this._dio);

  Future<bool> addPersonnel(PersonnelDetails personnelDetails) async {
    try {
      final response = await _dio.post(
        '/personnel', // Replace with your actual API endpoint
        data: {
          'first_name': personnelDetails.firstName,
          'last_name': personnelDetails.lastName,
          'address': personnelDetails.address,
          'suburb': personnelDetails.suburb,
          'state': personnelDetails.state,
          'postcode': personnelDetails.postcode,
          'country': personnelDetails.country,
          'contact_number': personnelDetails.contactNumber,
          'additional_notes': personnelDetails.additionalNotes,
          'status': personnelDetails.status,
          'role_ids': personnelDetails.roleIds,
        },
      );

      return response.data['status'] ?? false;
    } catch (e) {
      throw Exception('Failed to add personnel: $e');
    }
  }
}
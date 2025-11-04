import 'package:dio/dio.dart';
import '../models/personnel_response.dart';
import '../models/role_response.dart';
import '../models/personnel_details.dart';

class PersonnelRepository {
  final Dio _dio;

  PersonnelRepository(this._dio);

  Future<PersonnelResponse> getPersonnelList() async {
    try {
      final response = await _dio.get(
        'https://beechem.ishtech.live/api/personnel-details',
      );

      if (response.statusCode == 200) {
        return PersonnelResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load personnel: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Failed to load personnel: ${e.response?.data['message'] ?? e.message}');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    }
  }

  Future<RoleResponse> getRoles() async {
    try {
      final response = await _dio.get(
        'https://beechem.ishtech.live/api/roles', // Assuming this endpoint exists
      );

      if (response.statusCode == 200) {
        return RoleResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load roles: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Failed to load roles: ${e.response?.data['message'] ?? e.message}');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    }
  }

  Future<void> addPersonnel(PersonnelDetails details) async {
    try {
      final response = await _dio.post(
        'https://beechem.ishtech.live/api/personnel-details/add',
        data: details.toJson(),
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Failed to add personnel: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Failed to add personnel: ${e.response?.data['message'] ?? e.message}');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    }
  }
}
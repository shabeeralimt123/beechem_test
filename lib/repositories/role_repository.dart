import 'package:dio/dio.dart';
import '../models/role_response.dart';

class RoleRepository {
  final Dio _dio;

  RoleRepository(this._dio);

  Future<List<Role>> fetchRoles() async {
    try {
      final response = await _dio.get('https://beechem.ishtech.live/api/roles/apiary-roles');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Role.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch roles: ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to fetch roles: $e');
    }
  }
}
import 'package:dio/dio.dart';
import '../models/login_response.dart';

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future<LoginResponse> login(String email, String password) async {
    try {
      final response = await _dio.post(
        'https://beechem.ishtech.live/api/login',
        data: {
          'email': email,
          'password': password,
          'mob_user': '1',
        },
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
        ),
      );

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(response.data);
      } else {
        throw Exception('Login failed: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(
          'Login failed: ${e.response?.data['message'] ?? e.message}',
        );
      } else {
        throw Exception('Network error: ${e.message}');
      }
    }
  }
}

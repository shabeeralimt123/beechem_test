import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/login_response.dart';
import '../repositories/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(this._authRepository) : super(AuthInitial()) {
    loadRememberedEmail();
  }

  Future<void> login(String email, String password, bool rememberMe) async {
    emit(AuthLoading());

    try {
      final response = await _authRepository.login(email, password);
      if (response.status) {
        final prefs = await SharedPreferences.getInstance();
        // Store tokens securely (in a real app, use flutter_secure_storage)
        await prefs.setString('access_token', response.accessToken);
        await prefs.setString('refresh_token', response.refreshToken);

        if (rememberMe) {
          await prefs.setString('email', email);
        } else {
          await prefs.remove('email');
        }

        emit(AuthSuccess(response));
      } else {
        emit(AuthFailure('Login failed'));
      }
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> loadRememberedEmail() async {
     final prefs = await SharedPreferences.getInstance();
    final email = prefs.getString('email');
    if (email != null) {
      emit(AuthEmailRemembered(email));
    }
  }

  Future<void> logout() async {
     final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    await prefs.remove('refresh_token');
    emit(AuthInitial());
  }
}
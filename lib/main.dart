import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'cubits/auth_cubit.dart';
import 'repositories/auth_repository.dart';
import 'screens/login_screen.dart';
import 'screens/personnel_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final dio = Dio();

  runApp(MyApp(prefs: prefs, dio: dio));
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  final Dio dio;

  const MyApp({super.key, required this.prefs, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(dio),
        ),
        BlocProvider(
          create: (context) => AuthCubit(
            RepositoryProvider.of<AuthRepository>(context),
            prefs,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'BeeChem Test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/personnel': (context) => const PersonnelListScreen(),
        },
      ),
    );
  }
}

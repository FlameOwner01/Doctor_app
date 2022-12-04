import 'package:doctor_app/auth/screens/login_page.dart';
import 'package:doctor_app/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String routeName = '/login-screen';
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const LoginPage(),
    );
  }
}

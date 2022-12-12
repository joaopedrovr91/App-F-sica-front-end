import 'package:flutter/material.dart';

import 'feature/menu_general/menu_general_page.dart';
import 'feature/login/login_page.dart';
import 'feature/home/home_page.dart';
import 'feature/register/register_page.dart';
import 'feature/rules/rules_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/menu': (context) => MenuGeneralPage(),
        '/test/specific': (context) => MenuGeneralPage(),
        '/test': (context) => const RulesPage(),
      }
    );
  }
}
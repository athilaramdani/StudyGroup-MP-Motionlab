import 'package:flutter/material.dart';
import 'package:motionweek2/pages/detail_product.dart';
import 'package:motionweek2/pages/home_page.dart'; // Import HomePage
import 'package:motionweek2/pages/login_page.dart';
import 'package:motionweek2/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      routes: {
        '/detail': (context) => const DetailProductPage(),
        '/home': (context) => const HomePage(),
        '/register': (context) => const RegisterPage()
      },
    );
  }
}

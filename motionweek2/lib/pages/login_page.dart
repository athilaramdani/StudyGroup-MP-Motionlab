import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Lottie.asset('assets/lottie/lottie_login.json'),
          Text("Login_page", style: GoogleFonts.aboreto()),
          Text(
            "TESTERRR",
            style: GoogleFonts.plusJakartaSans(fontSize: 30),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ],
      ),
    ));
  }
}

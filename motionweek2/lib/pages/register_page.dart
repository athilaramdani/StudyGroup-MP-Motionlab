import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionweek2/components/input_field.dart';
import 'package:motionweek2/components/confirmation_user_account.dart'; 
import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFCFFFE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create Account",
              style: GoogleFonts.plusJakartaSans(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            InputField(
              hintText: 'Full Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/internal/userlogo.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            InputField(
              hintText: 'Email',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/internal/emaillogo.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            InputField(
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/internal/passwordlogo.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            InputField(
              hintText: 'Confirm Password',
              isPassword: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/internal/passwordlogo.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            ConfirmationUserAccount(
              buttonText: "Register",
              displayText: "Already have an account? ",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

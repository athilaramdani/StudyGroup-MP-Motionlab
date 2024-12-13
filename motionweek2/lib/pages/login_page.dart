import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:motionweek2/components/input_field.dart';
import 'package:motionweek2/components/confirmation_user_account.dart'; 
import 'package:motionweek2/ui_kit/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/login_cart.json', height: 300),
            Text(
              "Welcome!",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Happy Shopping Alrerfsl",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grayColor),
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
            ConfirmationUserAccount(
              buttonText: "Login",
              displayText: "Don't have an account? ",
              onTap: () {
                Get.toNamed('/register');
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00623B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/logos/motionlogo.svg',
              color: Colors.white,
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              'MOTION\nSHOP',
              textAlign: TextAlign.center,
              style: GoogleFonts.pollerOne(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

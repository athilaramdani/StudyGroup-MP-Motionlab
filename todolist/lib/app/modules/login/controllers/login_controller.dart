// lib/modules/login/controllers/login_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var isLoading = false.obs;

  // Text Editing Controllers
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  Future<void> login() async {
    try {
      isLoading.value = true;
      final email = emailController.text.trim();
      final password = passwordController.text.trim();

      if (email.isEmpty || password.isEmpty) {
        Get.snackbar("Error", "Email dan Password tidak boleh kosong");
        return;
      }

      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // Setelah berhasil login, arahkan ke halaman Home
      Get.offAllNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Login Error", e.message ?? "Terjadi kesalahan saat login");
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan, silahkan coba lagi");
    } finally {
      isLoading.value = false;
    }
  }
}

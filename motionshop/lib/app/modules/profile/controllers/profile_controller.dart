import 'package:get/get.dart';
import 'package:motionshop/service/auth_service.dart';

class ProfileController extends GetxController {
  final AuthService _authService = AuthService();

  Future<void> logout() async {
    await _authService.logout();
    Get.offAllNamed('/login');
  }
}

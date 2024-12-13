import 'package:get/get.dart';
import 'package:motionweek2/pages/cart_page.dart';
import 'package:motionweek2/pages/detail_product.dart';
import 'package:motionweek2/pages/home_page.dart';
import 'package:motionweek2/pages/invoice_page.dart';
import 'package:motionweek2/pages/login_page.dart';
import 'package:motionweek2/pages/register_page.dart';
import 'package:motionweek2/pages/splash/splash_page.dart';

class Routes {
  static List<GetPage> get list {
    return [
      GetPage(name: '/splash', page: () => const SplashPage()),
      GetPage(name: '/detail', page: () => const DetailProductPage()),
      GetPage(name: '/home', page: () => const HomePage()),
      GetPage(name: '/register', page: () => const RegisterPage()),
      GetPage(name: '/login', page: () => const LoginPage()),
      GetPage(name: '/cart', page: () => CartPage()),
      GetPage(name: '/invoice', page: () => InvoicePage()),
    ];
  }
}

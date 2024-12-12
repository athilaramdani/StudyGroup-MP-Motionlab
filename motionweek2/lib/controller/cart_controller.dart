import 'package:get/get.dart';

class CartController extends GetxController {
  final RxInt quantity = 0.obs;
  void quantityIncrement() => quantity.value++;
  void quantityDecrement() {
    if (quantity.value > 0) {
      quantity.value--;
    }
  }
}

import 'package:get/get.dart';
import 'package:motionweek2/data/static_data.dart';

class CartController extends GetxController {
  var quantities = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    quantities.value =
        List<int>.generate(StaticData.products.length, (index) => 1);
  }

  void increaseQuantity(int index) {
    if (index < quantities.length) {
      quantities[index]++;
    }
  }

  void decreaseQuantity(int index) {
    if (index < quantities.length && quantities[index] > 1) {
      quantities[index]--;
    }
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (int i = 0; i < quantities.length; i++) {
      String rawPrice = StaticData.products[i]['price'];
      String cleanedPrice = rawPrice.replaceAll(
          RegExp(r'[^\d.]'), '');
      double price = double.tryParse(cleanedPrice) ?? 0.0;
      total += price * quantities[i];
    }
    return total;
  }
}

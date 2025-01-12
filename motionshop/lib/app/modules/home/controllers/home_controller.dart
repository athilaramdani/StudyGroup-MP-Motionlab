import 'package:get/get.dart';
import 'package:motionshop/app/data/static_data.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  List<String> get chipLabels => StaticData.chipLabels;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  List<Map<String, dynamic>> get filteredProducts {
    final category = chipLabels[selectedIndex.value];
    if (category == 'All') {
      return StaticData.products;
    } else {
      return StaticData.products
          .where((product) => product['category'] == category)
          .toList();
    }
  }
}

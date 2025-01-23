import 'package:get/get.dart';
import 'package:motionshop/app/data/models/product_model_api.dart';
import 'package:motionshop/service/product_service.dart';

class DetailProductController extends GetxController {
  final productService = ProductService();

  var isLoading = false.obs;
  var productDetail = Rxn<ProductElement>(); // bisa null

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null && args['id'] != null) {
      final int productId = args['id'];
      fetchDetail(productId);
    }
  }

  Future<void> fetchDetail(int id) async {
    try {
      isLoading.value = true;
      final detail = await productService.getDetailsProducts(id: id);
      if (detail != null) {
        productDetail.value = detail;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}

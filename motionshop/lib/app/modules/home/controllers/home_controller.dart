import 'package:get/get.dart';
import 'package:motionshop/app/data/models/product_model_api.dart';
import 'package:motionshop/service/product_service.dart';

class HomeController extends GetxController {
  // Service
  final productService = ProductService();

  // State reaktif
  var isLoading = false.obs;
  var productsFromApi = <ProductElement>[].obs; // List ProductElement

  // Kategori (bisa dari API, atau hard-coded)
  var chipLabels = <String>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  // Method panggil API
  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      // Memanggil service
      final product =
          await productService.getProducts(); // mengembalikan Product?
      if (product != null) {
        // Simpan semua productElement ke RxList
        productsFromApi.value = product.products ?? [];

        // Jika ingin men-generate chipLabels dari kategori (yang di-respons API):
        final allCategories =
            productsFromApi.map((p) => p.category?.name).toSet().toList();
        // Contoh, tambahkan 'All' di paling depan
        chipLabels.clear();
        chipLabels.add('All');
        chipLabels.addAll(allCategories.whereType<String>());
      }
    } catch (e) {
      // Handle error
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  // Mengubah kategori yang dipilih
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  // Filter data berdasarkan kategori
  List<ProductElement> get filteredProducts {
    if (chipLabels.isEmpty) return [];

    final category = chipLabels[selectedIndex.value];
    if (category == 'All') {
      return productsFromApi;
    } else {
      // Karena di model enum Category, kita cek name-nya
      return productsFromApi
          .where(
              (p) => p.category?.name.toLowerCase() == category.toLowerCase())
          .toList();
    }
  }
}

extension CategoryExtension on Category {
  String get name {
    switch (this) {
      case Category.BEAUTY:
        return 'beauty';
      case Category.FRAGRANCES:
        return 'fragrances';
      case Category.FURNITURE:
        return 'furniture';
      case Category.GROCERIES:
        return 'groceries';
    }
  }
}

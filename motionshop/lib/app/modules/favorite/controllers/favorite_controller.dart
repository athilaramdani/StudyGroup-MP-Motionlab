import 'package:get/get.dart';
import 'package:motionshop/service/favorite_service.dart';

class FavoriteController extends GetxController {
  final FavoriteService favoriteService = FavoriteService();
  var favoriteProducts = <int>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    favoriteProducts.value = await favoriteService.getFavorites();
  }

  Future<void> toggleFavorite(int productId) async {
    await favoriteService.toggleFavorite(productId);
    loadFavorites();
  }

  bool isFavorite(int productId) {
    return favoriteProducts.contains(productId);
  }
}

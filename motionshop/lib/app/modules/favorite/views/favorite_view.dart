import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionshop/app/modules/favorite/controllers/favorite_controller.dart';
import 'package:motionshop/app/modules/home/controllers/home_controller.dart';
import 'package:motionshop/app/widgets/product_card.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorite Products")),
      body: Obx(() {
        if (controller.favoriteProducts.isEmpty) {
          return const Center(child: Text("No favorite products"));
        }

        return GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
          children: controller.favoriteProducts.map((productId) {
            // Cek produk dari list di HomeController
            final product = Get.find<HomeController>()
                .productsFromApi
                .firstWhereOrNull((p) => p.id == productId);

            if (product == null) return Container();

            return ProductCard(
              productId: product.id ?? 0,
              title: product.title ?? "",
              price: product.price ?? 0,
              image: product.thumbnail ?? "",
              description: product.description ?? "",
              isFavorite: true,
              onFavoriteToggle: () =>
                  controller.toggleFavorite(product.id ?? 0),
            );
          }).toList(),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionweek2/components/cart_card.dart';
import 'package:motionweek2/components/custom_appbar_2.dart';
import 'package:motionweek2/controller/cart_controller.dart';
import 'package:motionweek2/data/static_data.dart';
import 'package:motionweek2/ui_kit/colors.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar2(title: 'My Cart'),
          Expanded(
            child: Container(
              color: AppColor.whiteColor,
              child: ListView.builder(
                itemCount: StaticData.products.length,
                itemBuilder: (context, index) {
                  final product = StaticData.products[index];
                  return CartCard(
                    title: product['title'],
                    price: product['price'],
                    image: product['image'],
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          final totalPrice = cartController.calculateTotalPrice();
          Get.toNamed('/invoice', arguments: {
            'username': StaticData.userlogin['nama'],
            'email': StaticData.userlogin['email'],
            'totalPrice': totalPrice.toStringAsFixed(2),
          });
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          padding: const EdgeInsets.symmetric(vertical: 11),
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: double.infinity,
          child: const Text(
            "Buy Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

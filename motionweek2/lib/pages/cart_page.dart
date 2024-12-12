import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:motionweek2/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            leading: SvgPicture.asset("assets/svg/back_button.svg"),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  child: ListTile(
                    trailing: SizedBox(
                      width: 200,
                      height: 200,
                      child: Card(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: cartController.quantityDecrement,
                                icon: Icon(Icons.remove)),
                            Text("${cartController.quantity}"),
                            IconButton(
                                onPressed: cartController.quantityIncrement,
                                icon: Icon(Icons.add)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motionweek2/ui_kit/colors.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> product =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final bool isFavorite = product['isFavorite'] ?? false;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Get.back(),
                  ),
                  Text(
                    product['title'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                  Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                ],
              ),
            ),
            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    Image.asset(
                      product['image'],
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),
                    // Title
                    Text(
                      product['title'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Price
                    Text(
                      '\$${product['price'].toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff00623B),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Description
                    Text(
                      product['description'],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0XFF6D6D6D),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            // Add to Bag Button
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              padding: const EdgeInsets.symmetric(vertical: 11),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              child: const Text(
                "Add to bag",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

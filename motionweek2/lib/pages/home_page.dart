import 'package:flutter/material.dart';
import 'package:motionweek2/components/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFFFE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag, color: Colors.green),
            const SizedBox(width: 5),
            const Text(
              'M',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Our way of loving\nyou back',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1.5,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0x93161B28).withOpacity(0.58),
                ),
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFFF1F1F1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FilterChip(
                    label: const Text('All'),
                    selected: true,
                    onSelected: (_) {}),
                FilterChip(
                    label: const Text('Watch'),
                    selected: false,
                    onSelected: (_) {}),
                FilterChip(
                    label: const Text('Shirt'),
                    selected: false,
                    onSelected: (_) {}),
                FilterChip(
                    label: const Text('Shoes'),
                    selected: false,
                    onSelected: (_) {}),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Our Best Seller',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7,
                children: [
                  ProductCard(
                    title: 'Mi Band 8 Pro',
                    price: '\$54.00',
                    image: 'assets/images/IMBand.png',
                    isFavorite: true,
                  ),
                  ProductCard(
                    title: 'Lycra Men\'s shirt',
                    price: '\$12.00',
                    image: 'assets/images/tshirt.png',
                    isFavorite: false,
                  ),
                  ProductCard(
                    title: 'Headphone',
                    price: '\$45.00',
                    image: 'assets/images/headphones.png',
                    isFavorite: false,
                  ),
                  ProductCard(
                    title: 'Sneakers',
                    price: '\$35.00',
                    image: 'assets/images/shoes.png',
                    isFavorite: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0XFF00623B),
        selectedItemColor: Color(0XFFFFFFFF),
        unselectedItemColor: Color(0XFFB4DCCC),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}

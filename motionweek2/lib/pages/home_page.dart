import 'package:flutter/material.dart';
import 'package:motionweek2/components/appbar.dart';
import 'package:motionweek2/components/bottom_navigation_bar.dart';
import 'package:motionweek2/components/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Untuk menyimpan indeks FilterChip yang terpilih
  final List<String> _chipLabels = [
    'All',
    'Watch',
    'Shirt',
    'Shoes',
    'test',
    'test2'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFFFE),
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: Padding(
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(_chipLabels.length, (index) {
                        final bool isSelected = _selectedIndex == index;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: FilterChip(
                            showCheckmark: false,
                            label: Text(
                              _chipLabels[index],
                              style: TextStyle(
                                fontFamily: isSelected ? 'Raleway' : 'Inter',
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                            selected: isSelected,
                            onSelected: (_) {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            backgroundColor: isSelected
                                ? const Color(0XFF00623B)
                                : const Color(0XFFF2F2F2),
                            selectedColor: const Color(0XFF00623B),
                            side: BorderSide(
                              color: isSelected
                                  ? const Color(0XFF00623B)
                                  : const Color(0XFFF2F2F2),
                            ),
                          ),
                        );
                      }),
                    ),
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
                          description:
                              'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
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
          ),
          const CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}

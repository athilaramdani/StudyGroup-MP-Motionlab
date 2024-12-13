import 'package:flutter/material.dart';
import 'package:motionweek2/components/appbar.dart';
import 'package:motionweek2/components/bottom_navigation_bar.dart';
import 'package:motionweek2/components/product_card.dart';
import 'package:motionweek2/data/static_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final String selectedCategory = StaticData.chipLabels[_selectedIndex];
    final List<Map<String, dynamic>> filteredProducts =
        selectedCategory == 'All'
            ? StaticData.products
            : StaticData.products
                .where((product) => product['category'] == selectedCategory)
                .toList();

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
                        color: const Color(0x93161B28).withOpacity(0.58),
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
                      children:
                          List.generate(StaticData.chipLabels.length, (index) {
                        final bool isSelected = _selectedIndex == index;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: FilterChip(
                            showCheckmark: false,
                            label: Text(
                              StaticData.chipLabels[index],
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
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
                      fontSize: 22,
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
                      children: filteredProducts.map((product) {
                        return ProductCard(
                          title: product['title'],
                          price: product['price'],
                          image: product['image'],
                          description: product['description'],
                          isFavorite: product['isFavorite'],
                        );
                      }).toList(),
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

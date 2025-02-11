import 'package:flutter/material.dart';

import 'widgets/card_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          height: 76,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            iconSize: 32,
            selectedItemColor: Color(0xFF53B175),
            unselectedItemColor: Colors.black,

            currentIndex: 0,

            type: BottomNavigationBarType
                .fixed, // Чтобы все 5 элементов отображались
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket_outlined), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_search_rounded), label: "Explore"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_rounded),
                  label: "Favourite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "Account"),
            ],
            selectedLabelStyle: TextStyle(
              fontSize: 12, // Размер шрифта для выбранного элемента
              fontWeight: FontWeight.bold, // Жирный шрифт
              fontFamily: 'Gilroy', // Укажите ваш шрифт здесь
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12, // Размер шрифта для невыбранных элементов
              fontWeight: FontWeight.normal, // Обычный шрифт
              fontFamily: 'Gilroy', // Укажите ваш шрифт здесь
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search store",
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: const Color(0xFFF2F3F2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Placeholder(
                      fallbackHeight: 115,
                      fallbackWidth: 367,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exclusive offer',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF53B175),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best selling',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF53B175),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                        CardWidget(),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

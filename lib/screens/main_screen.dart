import 'package:flutter/material.dart';
import 'package:grocery_store/screens/account_screen.dart';
import 'package:grocery_store/screens/cart_screen.dart';
import 'package:grocery_store/screens/explore_screen.dart';
import 'package:grocery_store/screens/home_screen.dart';

import 'favourite_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<int> _pagesWithoutAppBar = [0, 4];
  static List<Widget> pages = <Widget>[
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    AccountScreen(),
  ];

  void onSelectedTab(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _pagesWithoutAppBar.contains(_selectedIndex)
            ? null
            : AppBar(
                backgroundColor: Colors.white,
                title: const Center(
                    child: Text(
                  'Find Products',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
        body: pages[_selectedIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(
          height: 76,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            iconSize: 32,
            selectedItemColor: const Color(0xFF53B175),
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
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
            onTap: onSelectedTab,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gilroy',
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontFamily: 'Gilroy',
            ),
          ),
        ),
      ),
    );
  }
}

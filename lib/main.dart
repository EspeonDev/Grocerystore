import 'package:flutter/material.dart';
import 'package:grocery_store/screens/explore_screen.dart';
import 'package:grocery_store/screens/home_screen.dart';
import 'package:grocery_store/screens/main_screen.dart';
import 'package:grocery_store/screens/product_detail.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => MainScreen(),
      '/explore': (context) => ExploreScreen(),
    });
  }
}

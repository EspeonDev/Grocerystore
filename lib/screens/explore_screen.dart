import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
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
                SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    CategoryWdiget(
                      title: r'Frash Fruits & Vegetable',
                      imgPath: 'assets/images/fruits_vegetables.png',
                      color: Color(0xFF53B175),
                    ),
                    SizedBox(width: 15),
                    CategoryWdiget(
                      title: r'Cooking Oil & Ghee',
                      imgPath: 'assets/images/oil.png',
                      color: Color(0xFFF8A44C),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    CategoryWdiget(
                      title: r'Meat & Fish',
                      imgPath: 'assets/images/meatfish.png',
                      color: Color(0xFFF7A593),
                    ),
                    SizedBox(width: 15),
                    CategoryWdiget(
                      title: r'Bakery & Snacks',
                      imgPath: 'assets/images/bakery.png',
                      color: Color(0xFFD3B0E0),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    CategoryWdiget(
                      title: r'Dairy & Eggs',
                      imgPath: 'assets/images/dairy.png',
                      color: Color.fromARGB(255, 214, 198, 143),
                    ),
                    SizedBox(width: 15),
                    CategoryWdiget(
                      title: r'Beverages',
                      imgPath: 'assets/images/beverages.png',
                      color: Color(0xFFB7DFF5),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                const Row(
                  children: [
                    CategoryWdiget(
                      title: r'Frash Fruits & Vegetable',
                      imgPath: 'assets/images/fruits_vegetables.png',
                      color: Color(0xFF53B175),
                    ),
                    SizedBox(width: 15),
                    CategoryWdiget(
                      title: r'Cooking Oil & Ghee',
                      imgPath: 'assets/images/oil.png',
                      color: Color(0xFFF8A44C),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryWdiget extends StatelessWidget {
  final String title;
  final Color color;
  final String imgPath;
  const CategoryWdiget({
    required this.title,
    required this.color,
    required this.imgPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: color.withOpacity(0.7),
          ),
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(18)),
      height: 190,
      width: 175,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(imgPath),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

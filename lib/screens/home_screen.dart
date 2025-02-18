import 'package:flutter/material.dart';
import 'package:grocery_store/models/product_model.dart';

import '/widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void onSelectedTab(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      Navigator.of(context).pushNamed('/explore');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Placeholder(
                      fallbackHeight: 115,
                      fallbackWidth: 367,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SectionTitle(title: 'Exclusive offer'),
                  const SizedBox(
                    height: 19,
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CardWidget(product: products[index]),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SectionTitle(title: 'Best Selling'),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CardWidget(product: products[index]),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SectionTitle(title: 'Groceries'),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: const Color(0xFFF8A44C).withOpacity(0.15)),
                          height: 105,
                          width: 250,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset('assets/images/pulses.png'),
                              ),
                              const Text(
                                'Pulses',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 20,
                                  fontWeight:
                                      FontWeight.bold, //semibold instead bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: const Color(0xFF53B175).withOpacity(0.15)),
                          height: 105,
                          width: 250,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset('assets/images/pulses.png'),
                              ),
                              const Text(
                                'Rice',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 20,
                                  fontWeight:
                                      FontWeight.bold, //semibold instead bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CardWidget(product: products[index]),
                        );
                      },
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

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'See all',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF53B175),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

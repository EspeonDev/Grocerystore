import 'package:flutter/material.dart';

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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                const SizedBox(
                  height: 23,
                ),
                const Placeholder(
                  fallbackHeight: 115,
                  fallbackWidth: 367,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
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
                const SizedBox(
                  height: 19,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.cyan,
                  ),
                  height: 249,
                  width: 173,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Placeholder(
                          fallbackHeight: 80,
                          fallbackWidth: 100,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Red Apple',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 16, // 16
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '7pcs, Priceg',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            color: Color(0xFF7C7C7C),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

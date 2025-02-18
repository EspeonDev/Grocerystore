import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
  });

  final String title;
  final double price;
  final String imagePath;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int counter = 1;

  void increment() {
    setState(() {
      counter = counter + 1;
    });
  }

  void decrement() {
    setState(() {
      if (counter > 1) {
        counter = counter - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border_rounded,
                        size: 24,
                        color: Color(0xFF7C7C7C),
                      ),
                    ],
                  ),
                  const Text(
                    '1kg, Price',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove, color: Colors.grey),
                            onPressed: () {
                              decrement();
                            },
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Center(
                              child: Text(
                                '$counter',
                                style: const TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon:
                                const Icon(Icons.add, color: Color(0xFF53B175)),
                            onPressed: () {
                              increment();
                            },
                          ),
                        ],
                      ),
                      Text(
                        '\$${(widget.price * counter).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Divider(),
                  const SizedBox(height: 15),
                  const Text(
                    'Product Detail',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Apples are nutritious. Apples may be good for weight loss. '
                    'Apples may be good for your heart as part of a healthy diet.',
                  ),
                  const SizedBox(height: 15),
                  const Divider(),
                  const SizedBox(height: 15),
                  _buildInfoRow('Nutritions', '100gr'),
                  const SizedBox(height: 15),
                  const Divider(),
                  const SizedBox(height: 15),
                  _buildInfoRow('Review', '5 stars'),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 67,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add To Basket',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Gilroy',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 1100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Row(
          children: [
            Text(value),
            const SizedBox(width: 10),
            const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ],
        ),
      ],
    );
  }
}

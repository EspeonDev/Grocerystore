import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Natural Red Apple',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 24,
                      color: Color(0xFF7C7C7C),
                    ),
                  ],
                ),
                Text(
                  '1kg, Price',
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: Row(
                        children: [
                          Icon(
                            Icons.horizontal_rule_rounded,
                            color: Color(0xFFE5E5E5),
                            size: 30,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                            child: Center(
                                child: Text(
                              '1',
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 16,
                                fontWeight: FontWeight.bold, // semibold
                              ),
                            )),
                          ),
                          Icon(
                            Icons.add_outlined,
                            color: Color(0xFF53B175),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      r'$4.99',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Divider(),
                SizedBox(height: 15),
                Text('Product Detail',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      fontWeight: FontWeight.bold, //semibold
                    )),
                Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Nutritions'),
                    Container(
                      child: Row(
                        children: [
                          Text('100gr'),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Review'),
                    Container(
                      child: Row(
                        children: [
                          Text('5 star'),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Color(0xFF53B175),
                  ),
                  height: 67,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Add To Basket',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontSize: 18,
                        fontWeight: FontWeight.bold, //semibold
                      ),
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

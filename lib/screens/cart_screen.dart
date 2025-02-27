import 'package:flutter/material.dart';
import 'package:grocery_store/models/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text('MyCart'),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Divider(),
            Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: double.infinity,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Row(
                            children: [
                              Container(
                                child: Center(
                                    child: Image.asset(
                                  cart[index].imgPath,
                                )),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cart[index].name,
                                                style: TextStyle(
                                                    fontFamily: 'Gilroy',
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text('1kg, Price'),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 7),
                                            child: IconButton(
                                              onPressed: () {
                                                cart.removeAt(index);
                                              },
                                              icon: Icon(Icons.close),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              17),
                                                    ),
                                                    child: Icon(Icons.remove)),
                                                SizedBox(width: 20),
                                                Text('1'),
                                                SizedBox(width: 20),
                                                Container(
                                                    height: 45,
                                                    width: 45,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              17),
                                                    ),
                                                    child: Icon(Icons.add)),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text('${cart[index].price}'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    );
                  }),
            )
          ],
        )),
      ),
    );
  }
}

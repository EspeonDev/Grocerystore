import 'package:flutter/material.dart';
import 'package:grocery_store/models/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Divider(),
        Expanded(
          child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                              child: Image.asset(
                            cart[index].imgPath,
                          )),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cart[index].name,
                                          style: const TextStyle(
                                              fontFamily: 'Gilroy',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text('1kg, Price'),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 7),
                                      child: IconButton(
                                        onPressed: () {
                                          cart.removeAt(index);
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                            ),
                                            child: const Icon(Icons.remove)),
                                        const SizedBox(width: 20),
                                        const Text('1'),
                                        const SizedBox(width: 20),
                                        Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                            ),
                                            child: const Icon(Icons.add)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Text('${cart[index].price}'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                );
              }),
        )
      ],
    ));
  }
}

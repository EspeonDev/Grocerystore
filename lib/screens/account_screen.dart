import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  final TextStyle menuTextStyle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  final Map<String, Icon> menu = {
    'Orders': const Icon(Icons.shop),
    'My details': const Icon(Icons.details),
    'Delivery address': const Icon(Icons.home),
    'Payment methods': const Icon(Icons.payment),
    'Promo card': const Icon(Icons.card_giftcard),
    'Notifications': const Icon(Icons.notifications),
    'Help': const Icon(Icons.help),
    'About': const Icon(Icons.question_answer),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Placeholder(
                fallbackHeight: 64,
                fallbackWidth: 64,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text('Mr. Pet Project'),
                Text('petproject@gmail.com'),
              ],
            )
          ]),
          const SizedBox(height: 30),
          const Divider(),
          Expanded(
            child: ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: menu.entries.map((entry) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                    title: Text(
                      entry.key,
                      style: menuTextStyle,
                    ),
                    leading: entry.value,
                    trailing: const Icon(Icons.arrow_forward_ios),
                  );
                }),
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}

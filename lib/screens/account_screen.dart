import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});

  TextStyle menuTextStyle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  Map<String, Icon> menu = {
    'Orders': Icon(Icons.shop),
    'My details': Icon(Icons.details),
    'Delivery address': Icon(Icons.home),
    'Payment methods': Icon(Icons.payment),
    'Promo card': Icon(Icons.card_giftcard),
    'Notifications': Icon(Icons.notifications),
    'Help': Icon(Icons.help),
    'About': Icon(Icons.question_answer),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Placeholder(
                  fallbackHeight: 64,
                  fallbackWidth: 64,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('Mr. Pet Project'),
                  Text('petproject@gmail.com'),
                ],
              ))
            ]),
            SizedBox(
              height: 30,
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: menu.entries.map((entry) {
                    return ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 5),
                      title: Text(
                        entry.key,
                        style: menuTextStyle,
                      ),
                      leading: entry.value,
                      trailing: Icon(Icons.arrow_forward_ios),
                    );
                  }),
                ).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

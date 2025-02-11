import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE2E2E2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      height: 249,
      width: 173,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          right: 15,
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Image.asset('assets/images/bananas.jpg'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Organic Bananas',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '7pcs, Priceg',
              style: TextStyle(
                fontFamily: 'Gilroy',
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  r'$4.99',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: const Color(0xFF53B175),
                  ),
                  width: 45,
                  height: 45,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 26,
                    weight: 700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PaymentCards extends StatelessWidget {
  const PaymentCards({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Methods",
          style: TextStyle(fontSize: 18, fontFamily: "Metropolis-semibold"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your payment cards",
              style: TextStyle(fontSize: 16, fontFamily: "Metropolis-semibold"),
            ),
            SizedBox(
              height: 216,
              width: double.infinity,
              child: Card(
                margin: EdgeInsets.zero,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

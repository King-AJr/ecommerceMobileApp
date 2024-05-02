import 'package:ecommerce_app/features/shop/checkout/screens/payment_cards/card_component.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class PaymentCardsScreen extends StatelessWidget {
  const PaymentCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

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
            Text(
              "Your payment cards",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            const CreditCardWidget(
              cardHolderName: "Jennyfer Doe",
              expiryDate: "05/23",
              lastFourDigits: "3947",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                  value: true,
                  onChanged: (value) {},
                ),
                Text(
                  "Save this card for future use",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
            const CreditCardWidget(
              cardHolderName: "Jennyfer Doe",
              expiryDate: "05/23",
              lastFourDigits: "3947",
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                  value: false,
                  onChanged: (value) {},
                ),
                Text(
                  "Save this card for future use",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add,
                      color: darkMode ? Colors.white : MyColors.colorDark,
                      size: 18),
                  label: const Text(''),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(10, 4, 4, 4),
                    shape: const CircleBorder(),
                    backgroundColor:
                        darkMode ? MyColors.colorDark : Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

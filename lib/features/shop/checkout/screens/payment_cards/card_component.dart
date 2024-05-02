import 'package:flutter/material.dart';
import 'package:ecommerce_app/util/constants/colors.dart';

class CreditCardWidget extends StatelessWidget {
  final String cardHolderName;
  final String expiryDate;
  final String lastFourDigits;

  const CreditCardWidget({
    Key? key,
    required this.cardHolderName,
    required this.expiryDate,
    required this.lastFourDigits,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Card(
        elevation: 0.2,
        color: darkMode ? MyColors.colorDark : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  'assets/images/chip.png',
                  width: 40,
                  height: 30,
                ),
              ),
              Row(
                children: [
                  const Text(
                    '**** **** **** ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    lastFourDigits,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Card Holder Name',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        cardHolderName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expiry Date',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        expiryDate,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/Mastercard-logo.png',
                    width: 40,
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

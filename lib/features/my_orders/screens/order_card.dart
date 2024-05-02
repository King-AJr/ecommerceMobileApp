import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String orderDate;
  final String trackingNumber;
  final String quantity;
  final String totalAmount;
  final VoidCallback onDetailsPressed;
  final String status;

  const OrderCard({
    required this.orderNumber,
    required this.orderDate,
    required this.trackingNumber,
    required this.quantity,
    required this.totalAmount,
    required this.onDetailsPressed,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Card(
        elevation: 0.2,
        color: darkMode ? MyColors.colorDark : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Order № $orderNumber",
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(
                    orderDate,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text(
                      "Tracking number: ",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      trackingNumber,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Quantity: ",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        quantity,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Amount: ",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        "$totalAmount\$",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        onPressed: onDetailsPressed,
                        child: Text("Details",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.black)),
                      ),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 14,
                        color: status == "Delivered"
                            ? const Color(0xFF2AA952)
                            : Colors.black,
                        fontFamily: "Metropolis-regular",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

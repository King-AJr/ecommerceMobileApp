import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/my_orders/screens/order_card.dart';
import 'package:ecommerce_app/features/my_orders/screens/order_details.screen.dart';
import 'package:ecommerce_app/features/my_orders/screens/orders_appBar.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrdersAppBar(
        title: "My Orders",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.allRoundPadding),
        child: ListView.builder(
          itemCount: 5, // Number of orders to display
          itemBuilder: (context, index) {
            // Mock data for demonstration
            final orderNumber = "194703${index + 1}";
            const orderDate = "05-12-2019";
            final trackingNumber = "IW347545345${index + 1}";
            const quantity = "3";
            const totalAmount = "112";
            final status = index % 2 == 0 ? "Delivered" : "Processing";

            return OrderCard(
              orderNumber: orderNumber,
              orderDate: orderDate,
              trackingNumber: trackingNumber,
              quantity: quantity,
              totalAmount: totalAmount,
              status: status,
              onDetailsPressed: () => Get.to(() => const OrderDetailsScreen()),
            );
          },
        ),
      ),
    );
  }
}

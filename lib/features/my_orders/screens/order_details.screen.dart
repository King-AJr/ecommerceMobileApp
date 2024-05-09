import 'package:ecommerce_app/common/widgets/build_size_button.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: MyAppBar(
        context,
        "Order details",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildOrderInfo(context, "Order № 1947034", "05-12-2019"),
          _buildTrackingInfo(context, "IW3475453455", "Delivered"),
          const SizedBox(height: 10),
          Text(
            "3 items",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: Sizes.allRoundPadding),
          const MyOrderCard(
            name: "Pullover",
            size: "L",
            color: "Black",
            price: 54,
            unit: 1,
            imageUrl: 'assets/images/cat_image2.png',
          ),
          const SizedBox(height: Sizes.allRoundPadding),
          const MyOrderCard(
            name: "Pullover",
            size: "L",
            color: "Black",
            price: 54,
            unit: 1,
            imageUrl: 'assets/images/cat_image2.png',
          ),
          const SizedBox(height: Sizes.allRoundPadding),
          const MyOrderCard(
            name: "Pullover",
            size: "L",
            color: "Black",
            price: 54,
            unit: 1,
            imageUrl: 'assets/images/cat_image2.png',
          ),
          const SizedBox(height: Sizes.allRoundPadding),
          Text(
            "Order information",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: Sizes.allRoundPadding),
          _buildOrderDetail(context, "Shipping Address",
              "3 Newbridge Court ,Chino Hills,\nCA 91709, United States"),
          _buildOrderDetail(context, "Payment method:", "**** **** **** 3947"),
          _buildOrderDetail(context, "Delivery method:", "FedEx, 3days, 15\$"),
          _buildOrderDetail(context, "Discount:", "10% personal promo code"),
          _buildOrderDetail(context, "Total amount:", "133\$"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             BuildSizeButton(
                label: "Reorder",
                color: darkMode ? MyColors.colorDark : Colors.white,
                height: 50,
                width: 160,
                circular: true,
              ),
              const BuildSizeButton(
                label: "Leave Feedback",
                color: MyColors.primary,
                height: 50,
                width: 160,
                circular: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOrderInfo(
      BuildContext context, String orderNumber, String date) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          orderNumber,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          date,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }

  Widget _buildTrackingInfo(
      BuildContext context, trackingNumber, String status) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Tracking number:    ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                trackingNumber,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
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
    );
  }

  Widget _buildOrderDetail(BuildContext context, label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class MyOrderCard extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  final String color;
  final int unit;
  final String size;
  const MyOrderCard(
      {Key? key,
      required this.name,
      required this.price,
      required this.color,
      required this.size,
      required this.unit,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      height: 130,
      width: double.infinity,
      child: Card(
        color: darkMode ? MyColors.colorDark : Colors.white,
        elevation: 0.1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: darkMode ? MyColors.colorDark : Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name,
                            style: Theme.of(context).textTheme.headlineSmall),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Color: $color", // Combined label and value
                            style: Theme.of(context).textTheme.labelSmall),
                        const SizedBox(width: 20), // Adjusted spacing
                        Text(
                          "Size: $size", // Combined label and value
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Unit: $unit",
                                style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                        Text('$price\$',
                            style: Theme.of(context).textTheme.displaySmall),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

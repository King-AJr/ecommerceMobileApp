import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';

class OrdersAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  const OrdersAppBar({
    required this.title,
    required this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              const DeliveryStatusWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(160); // Adjust height as needed
}

class DeliveryStatusWidget extends StatelessWidget {
  const DeliveryStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomStatusButton(
          text: "Delivered",
          onPressed: () {
            // Action for "Delivered" button
          },
          textStyle: Theme.of(context).textTheme.labelMedium,
          buttonColor: MyColors.colorDark,
        ),
        CustomStatusButton(
          text: "Processed",
          onPressed: () {
            // Action for "Processed" button
          },
          textStyle: Theme.of(context).textTheme.labelMedium,
          buttonColor: Colors.transparent,
        ),
        CustomStatusButton(
          text: "Cancelled",
          onPressed: () {
            // Action for "Cancelled" button
          },
          textStyle: Theme.of(context).textTheme.labelMedium,
          buttonColor: Colors.transparent,
        ),
      ],
    );
  }
}

class CustomStatusButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color buttonColor;

  const CustomStatusButton({
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.buttonColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: buttonColor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}

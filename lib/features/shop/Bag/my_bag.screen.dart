import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/shop/Bag/my_bag_card.dart';
import 'package:ecommerce_app/features/shop/checkout/screens/checkout_screen/checkout.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBagScreen extends StatelessWidget {
  const MyBagScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBottomAppBar(
        context,
        "My Bag",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBagItems(),
            _buildPromoCodeInput(context),
            _buildTotalAmount(context),
            _buildCheckoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBagItems() {
    return Column(
      children: List.generate(
        3,
        (index) => const MyBagCard(
          name: "Pullover",
          size: "L",
          color: "Black",
          price: 54,
          imageUrl: 'assets/images/cat_image2.png',
        ),
      ),
    );
  }

  Widget _buildPromoCodeInput(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: darkMode ? MyColors.colorDark : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your promo code',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalAmount(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total amount:",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            "124\$",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildCheckoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text(
            'CHECK OUT',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/shop/checkout/screens/checkout_screen/delivery_method.dart';
import 'package:ecommerce_app/features/shop/checkout/screens/checkout_screen/order_summary.dart';
import 'package:ecommerce_app/features/shop/checkout/screens/payment_cards/payment_cards.screen.dart';
import 'package:ecommerce_app/features/shop/checkout/shipping_address/shipping_address.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: MyAppBar(
        context,
        "Checkout",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Shipping Address",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: 130,
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
                              Text(
                                "Jane Doe",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                              TextButton(
                                onPressed: () =>
                                    Get.to(() => const ShippingAddressScreen()),
                                child: Text(
                                  "Change",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(color: MyColors.primary),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "3 Newbridge Court",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "Chino Hills, 91709, United States",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        GestureDetector(
                          onTap: () => Get.to(() => const PaymentCardsScreen()),
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              "Change",
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(color: MyColors.primary),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 75,
                          child: Card(
                            color: Colors.white,
                            elevation: 0.2,
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Mastercard-logo.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            "**** **** **** 3947",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery method",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildDeliveryMethod(context, darkMode,
                              'assets/images/fedxlogo.png', '2-3 days'),
                          buildDeliveryMethod(context, darkMode,
                              'assets/images/uspslogo.png', '2-3 days'),
                          buildDeliveryMethod(context, darkMode,
                              'assets/images/dhllogo.png', '2-3 days'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    buildOrderSummary(theme),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFDB3022),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'SUBMIT ORDER',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ),
    );
  }
}

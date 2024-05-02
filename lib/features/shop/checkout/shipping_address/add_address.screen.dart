import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/success.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        "Adding Shipping Addresses",
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const CustomTextField(label: "Full name"),
            const CustomTextField(label: "Address"),
            const CustomTextField(label: "City"),
            const CustomTextField(label: 'Zip Code (Postal Code)'),
            const CustomTextField(
                label: 'Country', suffixIcon: Icons.arrow_drop_down_outlined),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const SuccessScreen()),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'SAVE ADDRESS',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'Full name',
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'Address',
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'City',
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: "Zip code (Postal Code)",
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Country',
                    suffixIcon: Icon(Icons.arrow_drop_down_outlined)),
              ),
            ),
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

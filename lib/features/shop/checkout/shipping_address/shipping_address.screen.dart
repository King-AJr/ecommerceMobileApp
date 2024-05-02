import 'package:ecommerce_app/features/shop/checkout/shipping_address/add_address.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shipping Addresses",
          style: TextStyle(fontFamily: "Metropolis-semibold", fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 3, // Assuming you have 3 addresses, adjust as needed
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: AddressCard(
                darkMode: darkMode,
                name: "Jane Doe",
                address: "3 Newbridge Court\nChino Hills, 91709, United States",
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: darkMode ? MyColors.colorDark : Colors.white,
        onPressed: () => Get.to(() => const AddAddressScreen()),
        child: Icon(
          Icons.add,
          color: darkMode ? Colors.white : MyColors.colorDark,
        ),
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  final String name;
  final String address;
  final bool darkMode;

  const AddressCard({
    Key? key,
    required this.name,
    required this.address,
    required this.darkMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: Card(
        elevation: 0.2,
        color: darkMode ? MyColors.colorDark : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name, style: Theme.of(context).textTheme.labelMedium),
                  TextButton(
                    onPressed: () {
                      // Add logic to handle editing this address
                    },
                    child: const Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFDB3022),
                        fontFamily: "Metropolis-regular",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: Text(address,
                    style: Theme.of(context).textTheme.labelMedium),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(
                    "Use shipping address",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF222222),
                      fontFamily: "Metropolis-regular",
                    ),
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

import "package:ecommerce_app/common/widgets/bottomNavBar.dart";
import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get_core/src/get_main.dart";
import "package:get/route_manager.dart";

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            child: TextFormField(
              expands: true,
              maxLines: null,
              minLines: null,
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          //const CustomTextField(label: "Email", 
          ////prefixIcon: Icons.email, expands: true),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () => Get.to(() => const MyBottomNavigationBar()),
              child: Text(
                'FORGOT PASSWORD',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:iconsax/iconsax.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextField(label: "Email", prefixIcon: Icons.email),
          const CustomTextField(
            label: "Password",
            prefixIcon: Icons.password_rounded,
            suffixIcon: Iconsax.eye_slash,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot Password",
                  style: Theme.of(context).textTheme.labelMedium),
              GestureDetector(
                onTap: () => Get.to(() => const ForgotPasswordScreen()),
                child: const Icon(
                  Icons.arrow_right_alt,
                  color: Color(0xFFDB3022),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'LOGIN',
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

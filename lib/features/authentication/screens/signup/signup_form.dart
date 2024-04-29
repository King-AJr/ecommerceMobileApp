import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/features/authentication/screens/login/login.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:iconsax/iconsax.dart";

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextField(label: "Name"),
          const CustomTextField(label: "Email", prefixIcon: Icons.email),
          const CustomTextField(
            label: "Password",
            prefixIcon: Icons.password_rounded,
            suffixIcon: Iconsax.eye_slash,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Already have an account?",
                  style: Theme.of(context).textTheme.labelMedium),
              GestureDetector(
                onTap: () => Get.to(() => const LoginScreen()),
                child: const Icon(
                  Icons.arrow_right_alt,
                  color: Color(0xFFDB3022),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'SIGN UP',
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

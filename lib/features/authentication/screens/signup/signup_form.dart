import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:flutter/material.dart";

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
          const SizedBox(height: Sizes.spaceBetweenInputFields),
          const CustomTextField(label: "Email", prefixIcon: Icons.email),
          const SizedBox(height: Sizes.spaceBetweenInputFields),
          const CustomTextField(
            label: "Password",
            prefixIcon: Icons.password_rounded,
            suffixIcon: Iconsax.eye_slash,
          ),
          const SizedBox(height: Sizes.spaceBetweenInputFields / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Already have an account?",
                  style: Theme.of(context).textTheme.labelMedium),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/login'),
                child: const Icon(
                  Icons.arrow_right_alt,
                  color: Color(0xFFDB3022),
                ),
              ),
            ],
          ),
          const SizedBox(height: Sizes.spaceBetweenInputFields),
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

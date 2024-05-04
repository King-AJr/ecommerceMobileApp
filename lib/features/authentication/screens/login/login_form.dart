import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password.screen.dart";
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
          CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                )
              ),
            ),
          CustomTextField(
              child: TextFormField(
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password_rounded),
                    suffixIcon: Icon(Iconsax.eye_slash),),
              ),
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

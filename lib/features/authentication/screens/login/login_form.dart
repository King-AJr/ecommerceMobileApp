import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/features/authentication/controllers/login/login.controller.dart";
import "package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password.screen.dart";
import "package:ecommerce_app/util/helpers/validator.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:iconsax/iconsax.dart";

class LoginForm extends StatelessWidget {
  final LoginController loginController;
  const LoginForm({
    super.key,
    required this.loginController,
  });

  @override
  Widget build(BuildContext context) {
    Validator _validator = Validator();

    return Form(
      key: loginController.loginFormKey,
      child: Column(
        children: [
          CustomTextField(
            child: TextFormField(
              controller: loginController.email,
              maxLines: null,
              minLines: null,
              validator: (value) => _validator.validateEmail(value),
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          CustomTextField(
            child: Obx(
              () => TextFormField(
                controller: loginController.password,
                maxLines: 1,
                minLines: null,
                obscureText: loginController.hidePassword.value,
                validator: (value) => _validator.validatePassword(value),
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.password_rounded),
                  suffixIcon: IconButton(
                    onPressed: () => loginController.hidePassword.value =
                        !loginController.hidePassword.value,
                    icon: loginController.hidePassword.value
                        ? const Icon(Iconsax.eye_slash)
                        : const Icon(Iconsax.eye),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                        value: loginController.rememberMe.value,
                        onChanged: (value) => loginController.rememberMe.value =
                            !loginController.rememberMe.value),
                  ),
                  Text("Remember me",
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
              Row(
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
              onPressed: () => loginController.emailAndPasswordSignIn(),
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

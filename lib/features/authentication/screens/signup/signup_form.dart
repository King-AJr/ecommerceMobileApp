import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/features/authentication/controllers/signup.controller.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/helpers/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    Validator _validator = Validator();

    return Form(
      key: controller.signupFormKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    child: TextFormField(
                      controller: controller.firstnameController,
                      validator: (value) =>
                          _validator.validateName(value, 'First name'),
                      expands: false,
                      maxLines: null,
                      minLines: null,
                      decoration: const InputDecoration(
                        labelText: "First Name",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomTextField(
                    child: TextFormField(
                      controller: controller.lastnameController,
                      validator: (value) =>
                          _validator.validateName(value, 'Last name'),
                      expands: false,
                      maxLines: null,
                      minLines: null,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CustomTextField(
              child: TextFormField(
                controller: controller.emailController,
                validator: (value) => _validator.validateEmail(value),
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                controller: controller.usernameController,
                validator: (value) => _validator.validateUsername(value),
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Iconsax.user_edit),
                ),
              ),
            ),
            CustomTextField(
              child: TextFormField(
                controller: controller.phoneController,
                validator: (value) => _validator.validatePhoneNumber(value),
                maxLines: null,
                minLines: null,
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            CustomTextField(
              child: Obx(
                () => TextFormField(
                  controller: controller.passwordController,
                  validator: (value) => _validator.validatePassword(value),
                  maxLines: 1, // Set maxLines to 1 for single-line input
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: controller.hidePassword.value
                          ? const Icon(Iconsax.eye_slash)
                          : const Icon(Iconsax.eye),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Already have an account?',
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
            TermsAndConditionCheckBox(controller: controller),
            ElevatedButton(
              onPressed: () => controller.signup(),
              child:
                  const Text('SIGN UP', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) => controller.privacyPolicy.value =
                  !controller.privacyPolicy.value),
        ),
        const SizedBox(width: 10),
        Text.rich(
          TextSpan(
            text: 'I agree to the ',
            style: Theme.of(context).textTheme.labelSmall,
            children: [
              TextSpan(
                text: 'Terms of Service',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: MyColors.primary,
                    decoration: TextDecoration.underline),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Privacy Policy',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: MyColors.primary,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

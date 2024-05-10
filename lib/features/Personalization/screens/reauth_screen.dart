import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/common/widgets/myAppBars.dart";
import "package:ecommerce_app/features/Personalization/controllers/user.controller.dart";
import "package:ecommerce_app/util/constants/sizes.dart";
import "package:ecommerce_app/util/helpers/validator.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class ReAuthLoginScreen extends StatelessWidget {
  const ReAuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    Validator _validator = Validator();

    return Scaffold(
      appBar: MyBottomAppBar(context, "Reauthenticate User"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.allRoundPadding),
          child: Column(
            children: [
              Form(
                key: controller.reAuthFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                      child: TextFormField(
                        controller: controller.verifyEmail,
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
                          controller: controller.verifyPassword,
                          maxLines: 1,
                          minLines: null,
                          obscureText: controller.hidePassword.value,
                          validator: (value) =>
                              _validator.validatePassword(value),
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
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        onPressed: () => controller.reAuthenticateUser(),
                        child: Text(
                          'CLOSE ACCOUNT',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

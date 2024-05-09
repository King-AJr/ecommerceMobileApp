import "package:ecommerce_app/common/widgets/customTextField.dart";
import "package:ecommerce_app/features/authentication/controllers/forget_password/forget_password.controller.dart";
import "package:ecommerce_app/util/helpers/validator.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    Validator validator = Validator();

    return Form(
      key: controller.forgetPasswordFormKey,
      child: Column(
        children: [
          CustomTextField(
            child: TextFormField(
              controller: controller.email,
              validator: (value) => validator.validateEmail(value),
              maxLines: null,
              minLines: null,
              decoration: const InputDecoration(
                labelText: 'Email',
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
              onPressed: () => controller.sendPasswordResetEmail(),
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

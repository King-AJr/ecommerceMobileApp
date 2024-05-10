import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/Personalization/controllers/update_user_info.controller.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeEmail extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fieldController = TextEditingController();

  ChangeEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateUserInfoController());
    Validator validator = Validator();

    return Scaffold(
      appBar: MyAppBar(context, 'Change Email'),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.allRoundPadding),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Use correct information for easy verification, This information will appear on sevaral pages',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                child: TextFormField(
                  controller: fieldController,
                  validator: (value) => validator.validateEmail(value),
                  expands: false,
                  maxLines: null,
                  minLines: null,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.updateSingleField(
                      'Email', fieldController.text.trim(), formKey),
                  child:
                      const Text('SAVE', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

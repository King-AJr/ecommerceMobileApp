import 'package:ecommerce_app/common/widgets/customTextField.dart';
import 'package:ecommerce_app/common/widgets/myAppBars.dart';
import 'package:ecommerce_app/features/Personalization/controllers/update_user_info.controller.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:ecommerce_app/util/helpers/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeName extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateUserInfoController());
    Validator validator = Validator();

    return Scaffold(
      appBar: MyAppBar(context, 'Change Name'),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.allRoundPadding),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Use real name for easy verification, This name will appear on sevaral pages',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                child: TextFormField(
                  controller: firstNameController,
                  validator: (value) =>
                      validator.validateName(value, 'First name'),
                  expands: false,
                  maxLines: null,
                  minLines: null,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                  ),
                ),
              ),
              CustomTextField(
                child: TextFormField(
                  controller: lastNameController,
                  validator: (value) =>
                      validator.validateName(value, 'First name'),
                  expands: false,
                  maxLines: null,
                  minLines: null,
                  decoration: const InputDecoration(
                    labelText: "Last name",
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.updateName(
                      firstNameController.text.trim(),
                      lastNameController.text.trim(),
                      formKey),
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

import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailSuccessScreen extends StatelessWidget {
  final email;
  const EmailSuccessScreen({super.key, this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.allRoundPadding),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image(
                image: const AssetImage('assets/images/success_gif.gif'),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),
              const SizedBox(height: 32),
              Text(
                'Your account has been successfully created!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Welcome to your ultimate shopping destination, your account has been created, Unleash the joy of seemless Online shopping',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () =>
                      AuthenticationRepository.instance.screenRedirect(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primary,
                  ),
                  child: Text(
                    'Continue',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

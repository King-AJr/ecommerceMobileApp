import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/util/constants/colors.dart';
import 'package:ecommerce_app/util/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.signOut(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.allRoundPadding),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image(
                image: const AssetImage('assets/images/success_gif.gif'),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),
              const SizedBox(height: 32),
              Text(
                'Password Reset Email Sent!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Text(
                "Your account security is our Priority! We've sent you a secure link to safely change your password and keep your account protected",
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
                    'Done',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                    'Resend Email',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

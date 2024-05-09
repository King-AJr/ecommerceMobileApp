import 'package:ecommerce_app/bindings/general_bindings.dart';
import 'package:ecommerce_app/common/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app/data/authentication/authentication_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/forgot_password/forgot_password.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.screen.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/signup.screen.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/util/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value) => Get.put(
      () => AuthenticationRepository(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        initialBinding: GeneralBindings(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const MyBottomNavigationBar(),
        });
  }
}

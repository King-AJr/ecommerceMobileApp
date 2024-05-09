import 'package:ecommerce_app/data/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/models/user_model.dart';
import 'package:ecommerce_app/util/helpers/my_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  ///Save user information from any service provider
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        //conver name to first and last name
        final nameParts =
            UserModel.splitFullName(userCredential.user!.displayName!);
        final user = UserModel(
          id: userCredential.user!.uid,
          email: userCredential.user!.email ?? '',
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '',
        );
        
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      MyLoader.warningSnackBar(
          title: "Data not saved",
          message:
              'Something went wrong while saving your information. You can resave your information in your profile');
    }
  }
}

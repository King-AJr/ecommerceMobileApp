import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/util/helpers/formatters.dart';

// Static function to split full name into first and last name.

class UserModel {
  // Keep those values final which do not want to update
  final String id;
  final String email;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  final String username;
  final String profilePicture;

  // Required this for user
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.username,
    required this.lastName,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // Helper function to generate fullname from first and last name.
  String get FullName => "$firstName $lastName";

// Helper function to format phone number.
  String get FormattedPhone => Formatters.formatPhoneNumber(phoneNumber);
  // Helper function to get the full name.

  static List<String> splitFullName(String fullName) => fullName.split(" ");

  // Static function to generate a username from the full name.
  static String generateUsername(String fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername =
        '$firstName$lastName'; // Combine first and last name
    String usernameWithPrefix = 'cvt_$camelCaseUsername'; // Add "cvt_" prefix
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
        id: '',
        email: '',
        firstName: '',
        lastName: '',
        username: '',
        phoneNumber: '',
        profilePicture: '',
      );

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'FirstName': firstName,
      'LastName': lastName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'Username': username,
      'ProfilePicture': profilePicture,
    };
  }

// Factory method to create a UserModel from a Firestore document snapshot.
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        username: data['Username'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    }
    return UserModel.empty();
  }
}

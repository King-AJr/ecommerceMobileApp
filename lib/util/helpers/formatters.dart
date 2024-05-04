
class Formatters {
    Formatters._();

    static String formatPhoneNumber(String phoneNumber) {
  // Remove all non-digit characters from the input phone number
  String cleanedPhoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

  // Check if the phone number is empty after cleaning
  if (cleanedPhoneNumber.isEmpty) {
    return ''; // Return empty string if the phone number is invalid
  }

  // Determine the desired format based on the length of the cleaned phone number
  String formattedPhoneNumber;
  if (cleanedPhoneNumber.length == 10) {
    // Assuming a 10-digit phone number format (e.g., 1234567890)
    formattedPhoneNumber = '(${cleanedPhoneNumber.substring(0, 3)}) ${cleanedPhoneNumber.substring(3, 6)}-${cleanedPhoneNumber.substring(6)}';
  } else if (cleanedPhoneNumber.length == 11) {
    // Assuming an 11-digit phone number format with country code (e.g., 11234567890)
    formattedPhoneNumber = '+${cleanedPhoneNumber.substring(0, 1)} (${cleanedPhoneNumber.substring(1, 4)}) ${cleanedPhoneNumber.substring(4, 7)}-${cleanedPhoneNumber.substring(7)}';
  } else {
    // For other lengths, return the cleaned phone number without additional formatting
    formattedPhoneNumber = cleanedPhoneNumber;
  }

  return formattedPhoneNumber;
}

}
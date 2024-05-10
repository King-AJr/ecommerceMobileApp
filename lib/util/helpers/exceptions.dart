String handleFirebaseAuthException(errorCode) {
  String message;
  switch (errorCode) {
    case 'email-already-in-use':
      message = 'The email address is already in use by another account.';
      break;
    case 'invalid-email':
      message = 'Email Address or password is invalid';
      break;
    case 'operation-not-allowed':
      message = 'Email/password accounts are not enabled.';
      break;
    case 'weak-password':
      message = 'The password is not strong enough.';
      break;
    case 'user-disabled':
      message = 'The user account has been disabled by an administrator.';
      break;
    case 'invalid-credential':
      message = "There's no user with this email";
      break;
    case 'user-not-found':
      message = 'There is no user record corresponding to this identifier.';
      break;
    case 'wrong-password':
      message = 'Email Address or password is invalid';
    case 'requires-recent-login':
      message =
          'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';
      break;
    default:
      message = 'An unknown error occurred.';
      break;
  }
  return message;
}

String handleFirebaseFormatException() {
  String message = 'An unknown Firestore error occurred.';
  return message;
}

String handleFirebaseGeneralException(String errorCode) {
  String message;
  switch (errorCode) {
    case 'app-check-unknown-error':
      message = 'An unknown error occurred while performing App Check.';
      break;
    case 'app-deleted':
      message = 'The Firebase app was deleted.';
      break;
    case 'app-not-authorized':
      message = 'The app is not authorized to use Firebase services.';
      break;
    case 'app-not-installed':
      message = 'The app is not installed on the device.';
      break;
    case 'cancelled':
      message = 'The operation was cancelled by the user.';
      break;
    case 'internal-error':
      message = 'An internal error occurred within Firebase.';
      break;
    case 'invalid-api-key':
      message = 'The API key used is invalid.';
      break;
    case 'network-error':
      message =
          'A network error occurred (such as timeout, interrupted connection, or unreachable host).';
      break;
    case 'requires-recent-login':
      message =
          'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';
      break;
    case 'too-many-requests':
      message = 'Too many requests were made to a server method.';
      break;
    case 'unauthorized-domain':
      message =
          'The domain of the page is not authorized to perform the operation.';
      break;
    case 'null-user':
      message =
          'A null user object was provided as the argument for an operation which requires a non-null user object.';
      break;
    default:
      message = 'An unknown Firebase error occurred.';
      break;
  }
  return message;
}

class MyPlatformException implements Exception {
  final String code;

  MyPlatformException(this.code);

  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials. Please double-check your information.';
      case 'INVALID_ARGUMENT':
        return 'Invalid argument provided to the authentication method.';
      case 'INVALID_CUSTOM_TOKEN':
        return 'Invalid custom token.';
      case 'INVALID_EMAIL':
        return 'The provided email address is invalid.';
      case 'INVALID_PASSWORD':
        return 'Incorrect password. Please try again.';
      case 'USER_DISABLED':
        return 'The user account has been disabled by an administrator.';
      case 'USER_NOT_FOUND':
        return 'There is no user record corresponding to this identifier. The user may have been deleted.';
      case 'WEAK_PASSWORD':
        return 'The password is too weak.';
      case 'EMAIL_ALREADY_IN_USE':
        return 'The email address is already in use by another account.';
      case 'OPERATION_NOT_ALLOWED':
        return 'The given sign-in provider is disabled for this Firebase project. Enable it in the Firebase console.';
      case 'NETWORK_REQUEST_FAILED':
        return 'Network request failed. Please check your internet connection.';
      case 'INVALID_ID_TOKEN':
        return 'Invalid ID token. The user may have been signed out.';
      case 'TOKEN_EXPIRED':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      default:
        return 'An undefined platform exception happened.';
    }
  }

  @override
  String toString() {
    return 'TPlatformException(code: $code, message: $message)';
  }
}

String handleFirebaseAuthException(errorCode) {
  String message;
  switch (errorCode) {
    case 'auth/email-already-in-use':
      message = 'The email address is already in use by another account.';
      break;
    case 'auth/invalid-email':
      message = 'The email address is not valid.';
      break;
    case 'auth/operation-not-allowed':
      message = 'Email/password accounts are not enabled.';
      break;
    case 'auth/weak-password':
      message = 'The password is not strong enough.';
      break;
    case 'auth/user-disabled':
      message = 'The user account has been disabled by an administrator.';
      break;
    case 'auth/user-not-found':
      message = 'There is no user record corresponding to this identifier.';
      break;
    case 'auth/wrong-password':
      message = 'The password is invalid or the user does not have a password.';
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

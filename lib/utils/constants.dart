class Constants{
  static const String passwordRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static const String emailRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';



  static const String textSubmit = "Submit";
  static const String lebelEmailAddress = "Email Address";
  static const String lebelPassword = "Password";

  static const String hintEnterEmailAddress = "Enter email address";
  static const String hintEnterPassword = "Enter your password";

  static const String errorMessageEnterValidEmail = "Please enter valid email";
  static const String errorMessageEnterEmail = "Please enter email";
  static const String errorMessagePasswordEmpty = "Please enter password";
  static const String errorMessagePasswordLengthMinimum = "Password minimum length should be 8 char";
  static const String errorMessageEnterValidPassword = "Enter valid password";

}
import 'package:flutter/material.dart';
import 'package:lodhi_info_tech/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Util {

  static void showSnackBar(BuildContext context, String itemName) {
    final snackBar = SnackBar(
      content: Text("You are on item $itemName  !!!"),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // static void showToastMessage( String message){
  //   print("-------message-----------------$message-------");
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0
  //   );
  // }

  static TextStyle headerTitleTextStyle(
      {textColor = Colors.purple,
      double fontSize: 20.0,
      fontWeight: FontWeight.w300}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: 'FontRobotoBold',
        fontWeight: fontWeight);
  }

  static TextStyle regularTextStyle(
      {textColor = Colors.purple,
      double fontSize: 20.0,
      fontWeight: FontWeight.w300}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: 'FontRobotoRegular',
        fontWeight: fontWeight);
  }

  static String? validatePassword(String value) {
    RegExp regex = RegExp(Constants.passwordRegex);
    if (value.isEmpty) {
      return Constants.errorMessagePasswordEmpty;
    } else if (value.length < 8) {
      return Constants.errorMessagePasswordLengthMinimum;
    } else {
      if (!regex.hasMatch(value)) {
        return Constants.errorMessageEnterValidPassword;
      } else {
        return null;
      }
    }
  }

  static bool validateStructure(String value) {
    RegExp regExp = RegExp(Constants.emailRegex);
    return regExp.hasMatch(value);
  }

  static launchURL(url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}

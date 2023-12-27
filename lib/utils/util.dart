import 'package:flutter/material.dart';

class Util {
  static void showSnackBar(BuildContext context, String itemName) {
    final snackBar = SnackBar(
      content: Text("You are on item $itemName Add functionality !!!"),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static TextStyle headerTitleTextStyle(
      {textColor = Colors.purple, double fontSize: 20.0, fontWeight: FontWeight.w300}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: 'FontRobotoBold',
        fontWeight: fontWeight);
  }

  static TextStyle regularTextStyle(
      {textColor = Colors.purple, double fontSize: 20.0, fontWeight: FontWeight.w300}) {
    return TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontFamily: 'FontRobotoRegular',
        fontWeight: fontWeight);
  }
}

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

}

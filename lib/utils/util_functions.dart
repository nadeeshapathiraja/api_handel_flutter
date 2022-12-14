import 'package:flutter/material.dart';

class UtilFunctions {
  //navigation function
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  //go back function
  static void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  //push and remove navigation function
  static void pushRemoveNavigation(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

//Show Snackbar
  static void showSnackbar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
        ),
      ),
    );
  }
}

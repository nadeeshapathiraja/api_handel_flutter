import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';

class DialogBox {
  Future<dynamic> dialogbox(
    BuildContext context,
    DialogType dialogType,
    String title,
    String desc,
    Function() onTap,
  ) async {
    return AwesomeDialog(
      context: context,
      dialogType: dialogType,
      animType: AnimType.topSlide,
      title: title,
      desc: desc,
      btnOkOnPress: onTap,
    ).show();
  }
}

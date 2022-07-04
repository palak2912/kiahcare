import 'package:flutter/material.dart';
import 'Custom_Pop_Up.dart';
import 'custom_alert_dialog.dart';

class CustomShowDialog {
  static Future<void> customShowDialog(BuildContext context, String title,
      String message, String label, Function submit) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) => CustomAlertDialog(
            title: title, message: message, label: label, submit: submit));
  }


  static Future<void> customPopUp(BuildContext context, String title,
      String message, String label, Function submit) async{
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) => custompopup(
            title: title, message: message, label: label, submit: submit));
  }

}



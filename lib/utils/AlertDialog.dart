// ignore_for_import 'package:executiveapp/global/assets/allimports.dart';file: sort_child_properties_last, non_constant_identifier_names, file_names, no_leading_underscores_for_local_identifiers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:testbloc/utils/app_colors.dart';
import 'package:testbloc/utils/colors.dart';

AlertDialog confirmAlertDialog(context, String title, String content,
    {Function()? YesPressed, Function()? NoPressed, String? yes, String? no}) {
  return AlertDialog(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    title: Text(title, style: const TextStyle(color: kblack)),
    content: Text(
      content,
      style: TextStyle(color: Theme.of(context).primaryColorLight),
    ),
    actions: [
      TextButton(
        onPressed: YesPressed,
        child: Text(
          yes ?? "Yes",
          style: const TextStyle(color: ColorPrimary),
        ),
      ),
      TextButton(
        onPressed: NoPressed,
        child: Text(no ?? "No", style: const TextStyle(color: ColorPrimary)),
      ),
    ],
  );
}

void ShowLoadingDialog(BuildContext context, {Color? back, Color? spinner}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Container(
      color: back,
      child: const Center(
        child: SpinKitThreeBounce(
          color: ColorPrimary,
          size: 30.0,
        ),
      ),
    ),
  );
}

void ShowErrorDialog(BuildContext context, String title, content,
    {Color? back, Color? spinner, String? Ok}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(title, style: const TextStyle(color: ColorPrimary)),
            content: Text(
              content,
              style: TextStyle(color: Theme.of(context).primaryColorLight),
            ),
            actions: [
              TextButton(
                child: Text(
                  Ok ?? "Ok",
                  style: const TextStyle(color: ColorPrimary),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ));
}

Future ShowDialogAutoDismiss(BuildContext context, Timer? timer,
    {Function()? aftermethod}) async {
  await showDialog(
      context: context,
      builder: (BuildContext builderContext) {
        timer = Timer(const Duration(seconds: 1), () {
          Navigator.of(context).pop();
        });

        return const SpinKitThreeBounce(
          color: ColorPrimary,
          size: 30.0,
        );
      }).then((val) {
    aftermethod;
    if (timer!.isActive) {
      timer!.cancel();
    }
  });
}

void DismissLoadingDialog(BuildContext context) {
  Navigator.of(context).pop();
}

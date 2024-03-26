import 'package:flutter/material.dart';

enum ToastType { success, error, warning }

showToast(BuildContext context,
    {required String message, ToastType type = ToastType.warning}) {
  Color bgColor = Colors.orangeAccent;
  switch (type) {
    case ToastType.success:
      bgColor = Colors.greenAccent;
      break;
    case ToastType.error:
      bgColor = Colors.redAccent;
      break;
    default:
      break;
  }

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    margin: EdgeInsets.all(8),
    backgroundColor: bgColor,
    behavior: SnackBarBehavior.floating,
    padding: EdgeInsets.all(8),
    content: Text(
      message,
    ),
  ));
}

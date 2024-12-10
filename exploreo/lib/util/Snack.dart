import 'package:flutter/material.dart';

void Snack({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.black,
  SnackBarBehavior behavior = SnackBarBehavior.fixed,
  Duration duration = const Duration(seconds: 3),
  String? actionLabel,
  VoidCallback? onActionPressed,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor,
      behavior: behavior,
      duration: duration,
      action: actionLabel != null
          ? SnackBarAction(
        label: actionLabel,
        onPressed: onActionPressed ?? () {},
        textColor: Colors.white,
      )
          : null,
    ),
  );
}

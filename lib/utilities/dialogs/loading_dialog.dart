import 'package:flutter/material.dart';

typedef CloseDialog = void Function();

CloseDialog showLoadingDialog({
  required BuildContext context,
  required String text,
}) {
  final dialog = AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircularProgressIndicator(),
        const SizedBox(height: 10.0), //for creating space
        Text(text),
      ],
    ),
  );
  showDialog(
    context: context,
    barrierDismissible: false, //user cannot click outsied of this dialog
    builder: (context) => dialog,
  );
  return () => Navigator.of(context).pop();
}

import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetEmailSent(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Passord Reset',
    content:
        'We have now sent you a password reset link. Please check your email for more information.',
    optionBuilder: () => {
      'OK': null,
    },
  );
}

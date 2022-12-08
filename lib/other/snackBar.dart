import 'package:flutter/material.dart';

class snackBar{
static String message = '';
    final Bar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Helpers {

  static void copyToClipboard(BuildContext context, String text, {String? message}) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message ?? 'Copied to clipboard'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

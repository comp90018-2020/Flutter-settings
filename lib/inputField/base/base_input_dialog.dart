import 'package:flutter/material.dart';

class BaseInputDialog extends StatelessWidget {
  final String title, buttonText;
  final Widget contentWidget;

  BaseInputDialog({
    @required this.title,
    @required this.buttonText,
    @required this.contentWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: contentWidget,
    );
  }
}

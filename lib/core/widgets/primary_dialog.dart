import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryDialog extends StatelessWidget {
  final String? title;
  final Widget content;
  final String positiveButtonText;
  final Function(BuildContext context) positiveFunction;

  const PrimaryDialog({
    Key? key,
    this.title,
    required this.content,
    required this.positiveButtonText,
    required this.positiveFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: title != null ? Text(title ?? "", textAlign: TextAlign.center) : const SizedBox.shrink(),
            content: content,
            actions: _actionWidgets(context),
          )
        : AlertDialog(
            insetPadding: const EdgeInsets.all(24),
            title: title != null ? Text(title ?? "", textAlign: TextAlign.center) : const SizedBox.shrink(),
            content: content,
            actions: _actionWidgets(context),
          );
  }

  List<Widget> _actionWidgets(BuildContext context) {
    return [
      TextButton(
        child: Text(positiveButtonText),
        onPressed: () => positiveFunction(context),
      ),
    ];
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryLoadingIndicator extends StatelessWidget {
  const PrimaryLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? const CupertinoActivityIndicator() : const CircularProgressIndicator();
  }
}

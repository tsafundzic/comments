import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryRefreshIndicator extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;

  const PrimaryRefreshIndicator({Key? key, required this.child, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: onRefresh,
              ),
              child
            ],
          )
        : RefreshIndicator(
            child: child,
            onRefresh: onRefresh,
          );
  }
}

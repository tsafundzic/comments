import 'package:app/app.dart';
import 'package:app/env.dart';
import 'package:di/data_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  BuildEnvironment.init(
    flavor: BuildFlavor.prod,
    baseUrl: 'https://jsonplaceholder.typicode.com',
  );

  await initHive();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
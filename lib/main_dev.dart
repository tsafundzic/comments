import 'package:app/app.dart';
import 'package:app/env.dart';
import 'package:di/data_module.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  BuildEnvironment.init(
    flavor: BuildFlavor.dev,
    baseUrl: 'https://jsonplaceholder.typicode.com',
  );

  await initHive();

  runApp(
    const ProviderScope(
      observers: kDebugMode ? [_DebugObserver()] : null,
      child: App(),
    ),
  );
}

class _DebugObserver implements ProviderObserver {
  const _DebugObserver();

  @override
  void didAddProvider(ProviderBase provider, Object? value, ProviderContainer container) {
    print('riverpod - didAddProvider: ${provider.name ?? provider.runtimeType} -> $value');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer containers) {
    print('riverpod - didDisposeProvider: ${provider.name ?? provider.runtimeType}');
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print('riverpod - didUpdateProvider: ${provider.name ?? provider.runtimeType} -> $previousValue -> $newValue');
  }

  @override
  void providerDidFail(ProviderBase provider, Object error, StackTrace stackTrace, ProviderContainer container) {
    print('riverpod - providerDidFail: ${provider.name ?? provider.runtimeType} -> $error');
  }
}

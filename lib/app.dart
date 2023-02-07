import 'package:di/presentation_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        var router = ref.watch(appRouterProvider).router;
        return MaterialApp.router(
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          onGenerateTitle: (BuildContext context) => Translations.of(context)!.appName,
          localizationsDelegates: Translations.localizationsDelegates,
          supportedLocales: Translations.supportedLocales,
        );
      },
    );
  }
}

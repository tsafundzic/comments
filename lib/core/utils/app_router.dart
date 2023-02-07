import 'package:app/comments/comments_screen.dart';
import 'package:app/core/utils/constants/route_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        name: commentsRouteName,
        path: commentsRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const CommentsScreen(),
        ),
      ),
    ],
  );
}

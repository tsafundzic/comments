import 'package:app/core/utils/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/env.dart';

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());

final envProvider = env;
import 'package:data/comments/model/comment_entity.dart';
import 'package:di/presentation_module.dart';
import 'package:domain/comments/comment_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:data/comments/remote/comment_repository_impl.dart';
import 'package:data/comments/remote/comment_remote_data_source_impl.dart';
import 'package:data/comments/local/comment_local_data_source_impl.dart';

final dioProvider = Provider<Dio>(
  (ref) {
    final Dio dio = Dio();

    ref.onDispose(dio.close);

    dio.options.baseUrl = envProvider.baseUrl;
    dio.interceptors.addAll([
      if (kDebugMode) LogInterceptor(responseBody: true),
    ]);
    return dio;
  },
);

final commentRemoteDataSourceProvider = Provider((ref) => CommentRemoteDataSourceImpl(ref.watch(dioProvider)));

final commentLocalDataSourceProvider = Provider((ref) => CommentLocalDataSourceImpl());

final commentRepositoryProvider = Provider<CommentRepository>((ref) => CommentRepositoryImpl(ref.watch(commentRemoteDataSourceProvider), ref.watch(commentLocalDataSourceProvider)));


Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CommentEntityAdapter());
}


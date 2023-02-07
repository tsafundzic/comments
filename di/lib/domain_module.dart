import 'package:di/data_module.dart';
import 'package:domain/comments/usecase/comments_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commentsUseCaseProvider = StateNotifierProvider<CommentsUseCase, FetchState>((ref) => CommentsUseCase(ref.watch(commentRepositoryProvider)));

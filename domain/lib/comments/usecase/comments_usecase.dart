import 'dart:async';
import 'package:domain/comments/comment_repository.dart';
import 'package:domain/comments/model/comment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentsUseCase extends StateNotifier<FetchState> {
  final CommentRepository _commentRepository;

  CommentsUseCase(this._commentRepository) : super(InitialFetch());

  final int pageSize = 20;

  Future<void> fetchComments(int pageKey) async {
    if ((state is FailedFetch || state is FailedFirstPageFetch || state is SuccessfulPageLocalFetch || state is SuccessfulPageLocalFetch) && pageKey != 0) {
      getLocalComments(pageKey);
    } else {
      _commentRepository.fetchComments(pageKey, pageSize).then((comments) {
        final isLastPage = comments.length < pageSize;

        if (isLastPage) {
          state = SuccessfulLastPageFetch(comments);
        } else {
          state = SuccessfulPageFetch(comments, pageKey + pageSize);
        }
      }).catchError((onError) {
        if (pageKey == 0) {
          state = FailedFirstPageFetch(onError);
          getLocalComments(pageKey);
        } else {
          state = FailedFetch(onError);
        }
      });
    }
  }

  Future<void> getLocalComments(int pageKey) async {
    _commentRepository.getComments(pageKey).then((comments) {
      final isLastPage = comments.length < pageSize;

      if (isLastPage) {
        state = SuccessfulLastPageLocalFetch(comments);
      } else {
        state = SuccessfulPageLocalFetch(comments, pageKey + pageSize);
      }
    }).catchError((onError) {
      if (pageKey == 0) {
        state = FailedFirstPageLocalFetch(onError);
        getLocalComments(pageKey);
      } else {
        state = FailedLocalFetch(onError);
      }
    });
  }
}

abstract class FetchState {}

class InitialFetch extends FetchState {}

class SuccessfulPageFetch extends FetchState {
  List<Comment> comments;
  int nextPage;

  SuccessfulPageFetch(this.comments, this.nextPage);
}

class SuccessfulLastPageFetch extends FetchState {
  List<Comment> comments;

  SuccessfulLastPageFetch(this.comments);
}

class SuccessfulPageLocalFetch extends FetchState {
  List<Comment> comments;
  int nextPage;

  SuccessfulPageLocalFetch(this.comments, this.nextPage);
}

class SuccessfulLastPageLocalFetch extends FetchState {
  List<Comment> comments;

  SuccessfulLastPageLocalFetch(this.comments);
}

class FailedFirstPageFetch extends FetchState {
  final Exception exception;

  FailedFirstPageFetch(this.exception);
}

class FailedFetch extends FetchState {
  final Exception exception;

  FailedFetch(this.exception);
}

class FailedFirstPageLocalFetch extends FetchState {
  final Exception exception;

  FailedFirstPageLocalFetch(this.exception);
}

class FailedLocalFetch extends FetchState {
  final Exception exception;

  FailedLocalFetch(this.exception);
}

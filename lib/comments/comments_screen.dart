import 'dart:io';

import 'package:app/comments/comment_details_dialog.dart';
import 'package:app/comments/comment_item.dart';
import 'package:app/common/utils.dart';
import 'package:app/core/widgets/primary_loading_indicator.dart';
import 'package:app/core/widgets/primary_refresh_indicator.dart';
import 'package:domain/comments/model/comment.dart';
import 'package:domain/comments/usecase/comments_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:di/domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CommentsScreen extends ConsumerStatefulWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends ConsumerState<CommentsScreen> {
  final PagingController<int, Comment> _pagingController = PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      ref.read(commentsUseCaseProvider.notifier).fetchComments(pageKey);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(commentsUseCaseProvider, (previous, state) {
      if (state is FailedFirstPageFetch) {
        showSnackBar(context, Translations.of(context)!.commentsFetchDataError);
      } else if (state is SuccessfulPageFetch) {
        _pagingController.appendPage(state.comments, state.nextPage);
      } else if (state is SuccessfulLastPageFetch) {
        _pagingController.appendLastPage(state.comments);
      } else if (state is SuccessfulPageLocalFetch) {
        _pagingController.appendPage(state.comments, state.nextPage);
      } else if (state is SuccessfulLastPageLocalFetch) {
        _pagingController.appendLastPage(state.comments);
      }
    });

    return Scaffold(
      body: SafeArea(
        child: PrimaryRefreshIndicator(
          onRefresh: () => Future.sync(() => _pagingController.refresh()),
          child: Platform.isIOS
              ? PagedSliverList.separated(
                  pagingController: _pagingController,
                  separatorBuilder: (BuildContext context, int index) => const Padding(
                    padding: EdgeInsets.all(12),
                    child: Divider(),
                  ),
                  builderDelegate: _pagedChildBuilderDelegate(),
                )
              : PagedListView.separated(
                  shrinkWrap: true,
                  pagingController: _pagingController,
                  separatorBuilder: (BuildContext context, int index) => const Padding(
                    padding: EdgeInsets.all(12),
                    child: Divider(),
                  ),
                  builderDelegate: _pagedChildBuilderDelegate(),
                ),
        ),
      ),
    );
  }

  PagedChildBuilderDelegate<Comment> _pagedChildBuilderDelegate() {
    return PagedChildBuilderDelegate<Comment>(
      itemBuilder: (context, item, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => showDialog(
            context: context,
            builder: (context) => CommentDetailsDialog(comment: item),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CommentItem(comment: item),
          ),
        );
      },
      firstPageProgressIndicatorBuilder: (context) => const Center(child: PrimaryLoadingIndicator()),
      newPageProgressIndicatorBuilder: (context) => const Center(child: PrimaryLoadingIndicator()),
      noItemsFoundIndicatorBuilder: (context) => Center(child: Text(Translations.of(context)!.commentsNoComments)),
    );
  }
}

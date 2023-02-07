import 'package:domain/comments/model/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(Translations.of(context)!.commentsId(comment.id)),
        Text(Translations.of(context)!.commentsPostId(comment.postId)),
        Text(
          Translations.of(context)!.commentsName(comment.name),
          textAlign: TextAlign.left,
        ),
        Text(
          Translations.of(context)!.commentsEmail(comment.email),
          textAlign: TextAlign.left,
        ),
        Text(
          Translations.of(context)!.commentsBody(comment.body),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

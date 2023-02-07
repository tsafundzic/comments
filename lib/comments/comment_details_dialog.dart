import 'package:app/comments/comment_item.dart';
import 'package:app/core/widgets/primary_dialog.dart';
import 'package:domain/comments/model/comment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

class CommentDetailsDialog extends StatelessWidget {
  final Comment comment;

  const CommentDetailsDialog({Key? key, required this.comment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryDialog(
      content: CommentItem(comment: comment),
      positiveButtonText: Translations.of(context)!.generalOk,
      positiveFunction: (context) => Navigator.of(context).pop(),
    );
  }
}

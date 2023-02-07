import 'package:data/comments/model/comment_entity.dart';

abstract class CommentLocalDataSource {
  Future<void> addComments(int page, List<CommentEntity> comments);

  Future<List<CommentEntity>?> getComments(int page);
}

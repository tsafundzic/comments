import 'package:domain/comments/model/comment.dart';

abstract class CommentRepository {
  Future<List<Comment>> fetchComments(int start, int limit);

  Future<List<Comment>> getComments(int page);
}

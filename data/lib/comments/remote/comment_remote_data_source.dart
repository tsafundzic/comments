import 'package:data/comments/remote/model/comment_dto.dart';

abstract class CommentRemoteDataSource {
  Future<List<CommentDTO>> fetchComments(int start, int limit);
}

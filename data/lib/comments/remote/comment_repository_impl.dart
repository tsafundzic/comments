import 'package:data/comments/local/comment_local_data_source.dart';
import 'package:data/comments/remote/comment_remote_data_source.dart';
import 'package:domain/comments/comment_repository.dart';
import 'package:domain/comments/model/comment.dart';

class CommentRepositoryImpl extends CommentRepository {
  final CommentRemoteDataSource remoteDataSource;
  final CommentLocalDataSource localDataSource;

  CommentRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<List<Comment>> fetchComments(int start, int limit) async {
    return remoteDataSource.fetchComments(start, limit).then((commentsDTO) {
      List<Comment> comments = commentsDTO.map((e) => e.toCommentEntity().toComment()).toList();
      localDataSource.addComments(start, commentsDTO.map((e) => e.toCommentEntity()).toList());
      return comments;
    }).catchError((onError) {
      throw onError;
    });
  }

  @override
  Future<List<Comment>> getComments(int page) async {
    return localDataSource.getComments(page).then((list) => list != null ? list.map((e) => e.toComment()).toList() : []);
  }
}

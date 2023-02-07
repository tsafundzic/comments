import 'package:data/comments/local/comment_local_data_source.dart';
import 'package:data/comments/model/comment_entity.dart';
import 'package:hive/hive.dart';

const String commentsBox = 'commentsBox';

class CommentLocalDataSourceImpl extends CommentLocalDataSource {
  @override
  Future<void> addComments(int page, List<CommentEntity> comments) async {
    var box = await Hive.openBox(commentsBox);
    box.put(page, comments);
  }

  @override
  Future<List<CommentEntity>?> getComments(int page) async {
    var box = await Hive.openBox(commentsBox);
    var comments = box.get(page)?.cast<CommentEntity>();
    return comments;
  }
}

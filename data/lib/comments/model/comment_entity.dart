import 'package:domain/comments/model/comment.dart';
import 'package:hive/hive.dart';

part 'comment_entity.g.dart';

@HiveType(typeId: 1)
class CommentEntity {
  @HiveField(0)
  int? postId;
  @HiveField(1)
  int? id;
  @HiveField(2)
  String? name;
  @HiveField(3)
  String? email;
  @HiveField(4)
  String? body;

  CommentEntity(this.postId, this.id, this.name, this.email, this.body);

  Comment toComment() => Comment(postId ?? 0, id ?? 0, name ?? '', email ?? '', body ?? '');
}
